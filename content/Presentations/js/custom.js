
// js for tabs

function openTab(evt, tabID) {
  // Declare all variables
  var i, tabcontent, tablinks;

  // Get all elements with class="tabcontent" and hide them
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Get all elements with class="tablinks" and remove the class "active"
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }

  // Show the current tab, and add an "active" class to the button that opened the tab
  document.getElementById(tabID).style.display = "block";
  evt.currentTarget.className += " active";

  shadeActiveTab();

}

function shadeActiveTab() {
  var tablinks = document.getElementsByClassName("tablinks");
  var i;

  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].classList.remove("tab-active-bg");
  }

  var activeTab = document.querySelector(".tablinks.active");
  if (activeTab) {
    activeTab.classList.add("tab-active-bg");
  }
}

document.addEventListener("DOMContentLoaded", function () {
  shadeActiveTab();
});
