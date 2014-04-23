$(document).ready ->
  $(".flyer a").click (e) ->
    e.preventDefault()
    img = $(this).attr("href")
    $(".overlay").html("<img src=\"" + img + "\">").fadeIn()
    $(".overlay").click ->
      $(this).fadeOut()
      return

    vHeight = $("body").height()
    $(".overlay").height vHeight
    return

  dir = "/assets/img/gallery/march/"
  i = 1

  while i < 13
    $(".gallery").append "<img src=\"" + dir + "" + i + ".jpg\" width=\"100%\">"
    i++
  return