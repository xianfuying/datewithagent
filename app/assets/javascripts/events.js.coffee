# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $(".event").click (event) ->
    link = $(this).attr("data")
    window.location.replace(link)

  $(".mode").click (event) ->
    $(".mode").removeClass("selected")
    $(this).addClass("selected")
    $("#mode input").val($(this).attr("data"))
