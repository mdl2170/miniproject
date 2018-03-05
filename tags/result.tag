<result class="col-sm-4 offset-md-1 py-4">
  <h4 class="text-white">Result</h4>
  <ul class="list-unstyled">
    <li><span class="text-white">Correct: { correct }</span></li>
    <li><span class="text-white">Incorrect: { incorrect }</span></li>
  </ul>

  <script>
  var result = this;
  result.correct = 0;
  result.incorrect = 0;

  observable.on('updateResult', function(app){
    result.correct = app.correct;
    result.incorrect = app.incorrect;
    riot.update();
  });
</script>

</result>
