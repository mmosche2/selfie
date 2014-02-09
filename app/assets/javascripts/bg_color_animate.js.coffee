
$(document).ready ->
  scroll_pos = 0
  animation_begin_pos = 0
  animation_middle_pos = $(document).height() / 2
  console.log "mid pos: ", animation_middle_pos
  animation_end_pos = $(document).height()
  console.log "end pos: ", animation_end_pos
  beginning_color = new $.Color("rgb(188, 252, 167)")
  middle_color = new $.Color("rgb(248,199,150)")
  ending_color = new $.Color("rgb(111,142,224)")
  $(document).scroll ->
    scroll_pos = $(this).scrollTop()

    # top half
    if scroll_pos >= animation_begin_pos and scroll_pos <= animation_middle_pos
      percentScrolled = scroll_pos / (animation_middle_pos - animation_begin_pos)
      newRed = beginning_color.red() + ((middle_color.red() - beginning_color.red()) * percentScrolled)
      newGreen = beginning_color.green() + ((middle_color.green() - beginning_color.green()) * percentScrolled)
      newBlue = beginning_color.blue() + ((middle_color.blue() - beginning_color.blue()) * percentScrolled)
      newColor = new $.Color(newRed, newGreen, newBlue)

      # console.log( newColor.red(), newColor.green(), newColor.blue() );
      $("#home").animate
        backgroundColor: newColor
      , 0
    else if scroll_pos > animation_begin_pos
      $("#home").animate
        backgroundColor: middle_color
      , 0
    else if scroll_pos < animation_middle_pos
      $("#home").animate
        backgroundColor: beginning_color
      , 0
    else


    # bottom half
    if scroll_pos >= animation_middle_pos and scroll_pos <= animation_end_pos
      percentScrolled = (animation_middle_pos - scroll_pos) / (animation_middle_pos - animation_end_pos)

      # console.log( 'percent scrolled', percentScrolled );
      newRed = middle_color.red() + ((ending_color.red() - middle_color.red()) * percentScrolled)
      newGreen = middle_color.green() + ((ending_color.green() - middle_color.green()) * percentScrolled)
      newBlue = middle_color.blue() + ((ending_color.blue() - middle_color.blue()) * percentScrolled)
      newColor = new $.Color(newRed, newGreen, newBlue)

      # console.log( newColor.red(), newColor.green(), newColor.blue() );
      $("#home").animate
        backgroundColor: newColor
      , 0
    else if scroll_pos > animation_middle_pos
      $("#home").animate
        backgroundColor: ending_color
      , 0
    else if scroll_pos < ending_color
      $("#home").animate
        backgroundColor: middle_color
      , 0
    else

    return

  return
