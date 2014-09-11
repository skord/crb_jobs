$ ->
  $('.search-bar input[type="search"]').on 'keyup', (e) -> search() if e.keyCode is 13
  $('.search-bar button[type="submit"]').on 'click', -> search()

search = ->
  term = $('.search-bar input[type="search"]').val()
  window.location = "/jobs/search?term=#{term}"
