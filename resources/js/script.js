let esp_prices = { small: "$1", medium: "$2", large: "$3" };

function updatePrice(obj, pName) {

  let selection = obj.value.toLowerCase();
  let pEs = document.querySelector(`#${pName}`);

  switch (selection) {
    case "small":
      pEs.innerHTML = esp_prices.small;
      break;
    case "medium":
      pEs.innerHTML = esp_prices.medium;
      break;
    case "large":
      pEs.innerHTML = esp_prices.large;
      break;
    default:
      pName.textContent = "incorrect selection";
  }
}
