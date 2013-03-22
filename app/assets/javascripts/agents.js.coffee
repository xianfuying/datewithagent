# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(".agent").click (event) ->
    link_class = "." + this.classList[0] + " .description a"
    window.location.replace($(link_class).attr('href'))
