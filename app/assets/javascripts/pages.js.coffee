
tagline_array = ["Your Mirror Just Became Your Photographer",
            "Smile, then Share with the World",
            "Hands-Free, Hassle-Free Selfies"]

$(document).ready ->

  initializeWebCam = ->
    $('#webcam-outer').html("<div id='webcam'>")
    $("#webcam").scriptcam({
      width: 460,
      height: 320,
      cornerColor:'eeeeee'
    })
    $('#webcam-button').text("Remember This Moment!")

  takeSnapshop = ->
    src = "data:image/png;base64,"+$.scriptcam.getFrameAsBase64()
    $('#webcam-outer').html("<img id='webcam' style='visibility:visible'>")
    $('#webcam').attr("src", src)
    $('#webcam-button').text("Start Again")

  $('#webcam-button').click ->
    if $(this).text() == "Start Again"
      initializeWebCam()
    else
      takeSnapshop()

  initializeWebCam()

