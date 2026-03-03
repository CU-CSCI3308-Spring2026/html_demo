let express = require('express');
let app = express();
let bodyParser = require('body-parser');
const pgp = require('pg-promise')();
require('dotenv').config();
const handlebars = require('express-handlebars');
const path = require('path');

const PORT = 3000;

app.use(bodyParser.json());
// Database connection details
const dbConfig = {
  host: 'localhost',
  port: 5432,
  database: process.env.POSTGRES_DB,
  user: process.env.POSTGRES_USER,
  password: process.env.POSTGRES_PASSWORD,
};

// Connect to database using the above details
const db = pgp(dbConfig);

const hbs = handlebars.create({
  extname: 'hbs',
  layoutsDir: __dirname + '/views/layouts',
  partialsDir: __dirname + '/views/partials',
});

// Register `hbs` as our view engine using its bound `engine()` function.
app.engine('hbs', hbs.engine);
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

app.get('/', (req, res) =>{
   res.send("Hello World");
});

app.get('/getMenuItemsById', function(req,res){

  let id = req.query.id;
  let query = `SELECT * FROM MenuItem WHERE menu_item_category = $1 AND price > $2;`
  db.any(query, [req.query.category, req.query.price])
  .then(rows => {
    // console.log(rows);
    res.send(rows);
    // res.render('pages/home', {data:rows});
  })
  .catch(error => {
    res.send(error);
  });
})

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`);
});
