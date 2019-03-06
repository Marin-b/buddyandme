const visuPrice = document.querySelector('.visuPrice')
const displayCost = document.querySelector('.displayPrice')
const passCostToController = document.querySelector("#friendship_total_price")
const endHour = document.querySelector("#friendship_end_hour")
const startDate = document.querySelector("#friendship_start_date")
const startHour = document.querySelector("#friendship_start_hour")
const endDate = document.querySelector("#friendship_end_date")
const pricePerHour = document.querySelector(".price_per_hour")
const submitBtn = document.querySelector(".submit-btn")

visuPrice.addEventListener('click', (event) => {
  dt1 = new Date(startDate.value)
  dt1.setHours(startHour.value)
  dt2 = new Date(endDate.value)
  dt2.setHours(endHour.value)
  const total_price = ((dt2.getTime() - dt1.getTime())/3600000) * pricePerHour.innerHTML
  if (!isNaN(total_price) && total_price > 0 ) {
    displayCost.innerHTML = "Total cost is:" + total_price
    submitBtn.classList.remove("hidden")
    passCostToController.value = total_price
  }
  else {
    displayCost.innerHTML = "Please fill the form correctly"
  }

})
