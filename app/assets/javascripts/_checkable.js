const radios = document.querySelectorAll('.checkable');
const radioYes = document.getElementById("radio-yes")
const radioNo = document.getElementById("radio-no")

radios.forEach(function(item) {
  item.addEventListener('click', function(item) {
    if (item.path[0].id === "radio-yes") {
      radioYes.classList.add("checked");
      radioNo.classList.remove("checked");
    }
    else {
      radioNo.classList.add("checked");
      radioYes.classList.remove("checked");
    }
  })
});
