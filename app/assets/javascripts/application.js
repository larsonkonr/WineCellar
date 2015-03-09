// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= require bootstrap-sprockets

var checkBox = "input[type=checkbox]";
var checked = "input[type=checkbox]:checked";

// filters the categories from the checkbox clicked
function initializeCategoryFilter() {
  var $filterCategoryItems = $(checkBox).click(function(){
    $('.categories').hide();
    var $selected = $(checked).map(function (index, element) {
      return '.' + $(element).val()
    });
    var categories = $.makeArray($selected).join(',');
    categories ? $(categories).show() : $('.categories').show();
  });
}

function initializeSearchBar() {
  var bar = $("#search-bar");
  bar.keyup(function(){
    $('.search-item').hide().filter(function(){
      var itemText = $(this).text().toLowerCase();
      var searchText = $('#search-bar').val().toLowerCase();
      var filterMatch = itemText.indexOf(searchText) != -1;
      return filterMatch;
    }).show();
  });
}

$(document).ready(function(){

	initializeSearchBar();
  initializeCategoryFilter();

	console.log("doc ready");
});
