###
(function() {
  var header = $('#overview-top h1.header');
  var movieTitle = $('span.itemprop', header).text();
  var movieYear = $('span.nobr > a', header).text();
  $(header).append('<span id=\'netflix-checker\' style=\'font-size: 10px; color: White; font-weight: bold; padding:4px;\'></span>');
  $.ajax({
    url: 'http://netflixroulette.net/api/api.php?title=' + movieTitle + '&year=' + movieYear
  }).done(function(data) {
    $('#netflix-checker').text('On Netflix');
    $('#netflix-checker').css('background-color', 'green');
  }).error(function(err) {
    $('#netflix-checker').text('Not on Netflix');
    $('#netflix-checker').css('background-color', 'red');
  });
})
###

class WillItStream
  constructor: ->
    header = $('#overview-top h1.header')
    @movieTitle = $('span.itemprop', header).text()
    @movieYear = $('span.nobr > a', header).text()
    $(header).append('<span id=\'netflix-checker\' style=\'display:inline-block; font-size: 10px; color: White; font-weight: bold; padding:4px;\'></span>');
    @init()

  init: =>
    $.ajax
      url: 'http://netflixroulette.net/api/api.php?title=' + @movieTitle + '&year=' + @movieYear
    .done (data) ->
      $('#netflix-checker').text('On Netflix')
      $('#netflix-checker').css('background-color', 'green')
    .error (err) ->
      $('#netflix-checker').text('Not on Netflix')
      $('#netflix-checker').css('background-color', 'red')

new WillItStream
