let esp_prices = { small: "$1", medium: "$2", large: "$3" };
console.log("Javascript file linked");
function updatePrice(obj, pName) {
  console.log(obj.value);
  const selection = obj.value;
  const para = document.querySelector(`#${pName}`);
  console.log(para);
  switch(selection){
    case "small":
        para.innerHTML = esp_prices.small;
        break;
    case "medium":
        break;
    case "large":
        break;
  }
  console.log(pName);
}