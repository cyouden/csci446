var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var goalNumber=Math.floor(Math.random()*101);

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').append(score);
}

function checkGuess() {
  var guess = parseInt(document.getElementById('bereich').value);
  
  guessesLeft = guessesLeft - 1;
  updateScore(guessesLeft);
  
  if (guess == goalNumber) {
    //victory
  }
  else if (guess > goalNumber) {
    //too high message
  }
  else {
    //too low message
  }
  
  
}