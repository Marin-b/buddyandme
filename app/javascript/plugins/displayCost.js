const visuPrice = document.querySelector('.visuPrice')
const displayTime = document.querySelector(".displayCost")
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
    displayTime.innerHTML = "total cost is " + total_price
    submitBtn.classList.remove("hidden")
  }
  else {
    displayTime.innerHTML = "Please fill the form correctly"
  }

})
