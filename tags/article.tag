<article>
  <div class="container">
    <header class="py-3">
      <div class="row flex-nowrap justify-content-between align-items-center">
        <div class="col-4 pt-1">
          <button class="btn btn-sm btn-outline-secondary" onclick={ goBack }>Go back</button>
        </div>
      </div>
    </header>
  </div>

  <main role="main" class="container">
    <div class="row">
      <div class="col-md-8 blog-main">
        <div class="blog-post">
          <h2 class="blog-post-title"><span>{ opts.selectedPost.title }</span></h2>
          <p hide={ clueOn } class="blog-post-meta">{ opts.selectedPost.publishedDate }<br> by <a href="#">{ opts.selectedPost.author }</a></p>
          <p show={ clueOn } class="blog-post-meta"><span class="highLightClass" data-toggle="popover" data-content="Did you check the date? Is it right?" data-original-title="Think again" data-placement="top">{ opts.selectedPost.publishedDate } </span><br> by <a href="#"><span class="{newClass}" data-toggle="popover" data-content="Is the author reliable?" data-original-title="Think again" data-placement="top">{ opts.selectedPost.author }</span></a></p>
          <hr>
          <img src="{ opts.selectedPost.imageURL }" class="img-fluid mb-4">

          <span hide={ clueOn }><raw content="{ opts.selectedPost.bodyText }"/></span>
          <span show={ clueOn }><raw content="{ opts.selectedPost.bodyTextHighlight }"/></span>
        </div><!-- /.blog-post -->
      </div><!-- /.blog-main -->

      <aside class="col-md-4 blog-sidebar">
        <div class="p-3 mb-3 bg-light" if={ !opts.selectedPost.isResponded }>
          <h4 class="font-italic">Is this fake news?</h4>
          <button type="button" class="btn btn-sm btn-outline-secondary" onclick={ checkClues }>Get some clues</button>
          <span class="text-muted" show={ clueOn }>Click on the highlight!</span>
          <br><br>

          <button type="button" class="btn btn-sm btn-outline-secondary" onclick={ check } value="yes">Yes</button>
          <button type="button" class="btn btn-sm btn-outline-secondary" onclick={ check } value="no">No</button>
        </div>

        <!-- Display this section after responding to the question -->
        <!-- Correct Feedback -->
        <div class="alert alert-danger alert-dismissible fade show" role="alert" if={ opts.selectedPost.isResponded == 2}>
          <span>Your answer is incorrect</span>
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

        <!-- Incorrect Feedback -->
        <div class="alert alert-success alert-dismissible fade show" role="alert" if={ opts.selectedPost.isResponded == 1}>
          <span>Your answer is correct</span>
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

        <div class="p-3 mb-3 alert alert-warning" if={ opts.selectedPost.isResponded && opts.selectedPost.isFake }>
          <h4 class="font-italic">Why is this fake news?</h4>
          <p class="mb-0">This is a fake news because the author only specifies a portion of a climate period as his data to indicate that there is no global warming.</p>
        </div>

        <!-- Allow to share the news if it is real -->
        <div class="p-3 alert alert-warning" if={ opts.selectedPost.isResponded && !opts.selectedPost.isFake }>
          <h4 class="font-italic">Why is this real news?</h4>
          <p class="mb-3">This news is real because it uses credible references and data.</p>
          <h4 class="font-italic">Share this news</h4>
          <ol class="list-unstyled mb-0">
            <li><a href="#">Facebook</a></li>
            <li><a href="#">Twitter</a></li>
          </ol>
        </div>
      </aside><!-- /.blog-sidebar -->
    </div><!-- /.row -->

  </main>
  <script>
  this.timer = setTimeout(setRead, 30000);
  window.scrollTo(0, 0);
  this.clueOn = false;

  goBack() {
    observable.trigger('postSelected', -1);
    clearTimeout(this.timer);
  }

  checkClues(event) {
    this.newClass = "highLightClass";
    this.clueOn = true;
  }

  check(event) {
    if ((event.target.value == "yes" && opts.selectedPost.isFake) ||
    (event.target.value == "no" && !opts.selectedPost.isFake))
    {
      this.parent.correct += 1;
      opts.selectedPost.isResponded = 1;
    }
    else
    {
      this.parent.incorrect += 1;
      opts.selectedPost.isResponded = 2;
    }

    this.parent.notification += 1;
    observable.trigger('updateResult', this.parent);
  }

  function setRead() {
    opts.selectedPost.isRead = true;
  }

  // Bootstrap Popover set up
  $(function () {
    $('.example-popover').popover({
      container: 'body'
    })
  })

  $(document).ready(function(){
    $('[data-toggle="popover"]').popover();
  });
  </script>

  <style>
  .highLightClass{
    background-color: yellow;
    cursor: pointer;
  }
  </style>
</article>
