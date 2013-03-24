# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(".agent").click (event) ->
    link = $(this).attr("data")
    window.location.replace(link)
  $(".account-center li").click (event) ->
    link = $(this).attr("data")
    window.location.replace(link)

  $(".nav.left").click (event) ->
    header = $(".nav.left a")
    table = $("ul.account-center")
    if (table.hasClass("is-hide"))
      table.animate({top: -50}, "slow")
      table.removeClass("is-hide")
      header.removeClass("icon-double-angle-up")
      header.addClass("icon-double-angle-down")
    else
      table.animate({top: 0}, "slow")
      table.addClass("is-hide")
      header.removeClass("icon-double-angle-down")
      header.addClass("icon-double-angle-up")