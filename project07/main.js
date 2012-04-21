var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var goalNumber=Math.floor(Math.random()*101);

$(function() {
  $('#highOrLow').text(goalNumber);
  updateScore(guessesLeft);
  populateHighScores(highScores);
  
  $('form#guessTheNumber').keypress(function(e) {
    if(e.which == 13) {
      checkGuess();
      return false;
    }
  });
  
  $('#btnGuess').click(checkGuess);
});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').text(score);
}

function checkGuess() {
  var guess = parseInt($('#guess').val());
  
  guessesLeft = guessesLeft - 1;
  updateScore(guessesLeft);
  
  if (guess == goalNumber) {
    //victory
  }
  else if (guess > goalNumber) {
    //too high message
    $('#highOrLow').text('Too high!');
  }
  else {
    //too low message
    $('#highOrLow').text('Too low!');
  }

  if (guessesLeft <= 0) {
    //lose
  }
}

