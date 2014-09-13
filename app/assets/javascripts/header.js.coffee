$ ->
  $('.search-bar input[type="search"]').on 'keydown', (e) -> search() if e.keyCode is 13
  $('.search-bar button[type="submit"]').on 'click', -> search()

search = ->
  console.log 'asdf'
  term = $('.search-bar input[type="search"]').val()
  window.location = "/search?term=#{term}"
