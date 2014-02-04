$ ->
  $(".fancybox").fancybox()



  #adjustHeroContentTopPosition = () ->
  #  $('.hero img').on('load', ->
  #    to_margin = $('.hero img').height() + 45
  #    $('.hero .container h1').css 'margin-top', "#{to_margin}px"
  #    $('.index .hero .container h1').css 'margin-top', "55px"
  #    $('.index .hero').height($('.index .hero img').height())
  #  ).each( ->
  #    $(@).trigger('load') if @.complete
  #  )

  # adjusts hero height on homepage, where the image is super large
  #$('.hero').height($('.hero img').height()) if $('.hero img').height() > $('.hero').height()

    #adjustHeroContentTopPosition()


  # carousel stuff
  # pre-initialization
  if $('#carousel-projects')
    $($('#carousel-projects').find('.item')[0]).addClass 'active'
    $($('.slider_navigation ul li')[0]).addClass 'active'
  # slider highlighting
  $('.slider_navigation ul li').on 'click', (e) ->
    $('.slider_navigation ul li').each (id, el) ->
      $(el).removeClass 'active'
    $(e.currentTarget).addClass 'active'


  # donation form
  $('.donation_box .btn_plus').on 'click', (e) ->
    e.preventDefault()
    setDonation 10, e
  $('.donation_box .btn_minus').on 'click', (e) ->
    e.preventDefault()
    setDonation -10, e
  setDonation = (to, btn) ->
    $box = $($(btn.currentTarget).parent().find('input')[0])
    $link = $($(btn.currentTarget).parent().find('.btn_submit_donation')[0])
    current = parseInt($box.val().split(" ")[0])
    current += to
    $box.val("#{current} €") if current >= 10
    console.log $link
    $link.attr 'href', "/spenden?amount=#{current}"
  $('.btn_submit_donation').on 'click', (e) ->
    #e.preventDefault()
    $box = $($(e.currentTarget).parent().find('input')[0])
    amount = parseInt($box.val().split(" ")[0])
    #alert "donating #{amount}"



