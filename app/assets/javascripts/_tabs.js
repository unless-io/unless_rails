var tabs = document.querySelectorAll('.tab')
var tabContents = document.querySelectorAll('.tab-content')


tabs.forEach(function(tab) {
  tab.addEventListener('click', function(event) {
    event.preventDefault();
    var target = event.currentTarget.dataset.target
    clearTabContents()
    document.getElementById(target).classList.remove('hidden')
  clearTabs()
  tab.classList.add('active')
  })
})


function clearTabContents() {
  tabContents.forEach(function(tabContent) {
    tabContent.classList.add('hidden')
  })
}

function clearTabs() {
  tabs.forEach(function(tab) {
    tab.classList.remove('active')
  })
}
