window.onunload = ->

$ ->
  $('.search-bar input').on 'keydown', (e) -> search() if e.keyCode is 13
  $('.search-bar button').on 'click', -> search()

search = ->
  term = $('.search-bar input').val()
  window.location = "/search?term=#{term}"
