<notification>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation" onclick={ reset }>
    <span class="navbar-toggler-icon"></span><span class="badge badge-danger" if={ notification }>{ notification }</span>
  </button>
  
  <script>
  var that = this;
  var appHandler;
  that.notification = 0;

  observable.on('updateResult', function(app){
    appHandler = app;
    that.notification = app.notification;
    riot.update();
  });

  reset () {
    appHandler.notification = 0;
    that.notification = 0;
  }
  </script>
</notification>
