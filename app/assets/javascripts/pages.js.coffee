
tagline_array = ["Your Mirror Just Became Your Photographer",
            "Smile, then Share with the World",
            "Hands-Free, Hassle-Free Selfies"]

$(document).ready ->
  $("#webcam").scriptcam()

  getSnapshot = ->
    alert $.scriptcam.getFrameAsBase64()

  $('body').click ->
    getSnapshot()

