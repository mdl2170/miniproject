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
                <h2 class="blog-post-title"><span class = "{newClass}">{ opts.selectedPost.title }</span></h2>
                <p class=" blog-post-meta"><span class = "{newClass}">{ opts.selectedPost.publishedDate } </span><br> by <a href="#"><span class = "{newClass}">{ opts.selectedPost.author }</span></a></p>
                <hr>
                <img src="{ opts.selectedPost.imageURL }" class="img-fluid mb-4">

                <span><raw content="{ opts.selectedPost.bodyText }"/></span>
              </div><!-- /.blog-post -->

            </div><!-- /.blog-main -->

            <aside class="col-md-4 blog-sidebar">
              <div class="p-3 mb-3 bg-light" if={ !opts.selectedPost.isResponded }>
                <h4 class="font-italic">Is this fake news?</h4>
                <button type="button" class="btn btn-sm btn-outline-secondary" onclick={ check } value="yes">Yes</button>
                <button type="button" class="btn btn-sm btn-outline-secondary" onclick={ check } value="no">No</button>
                <button type="button" class="btn btn-sm btn-outline-secondary" onclick={ check } value="maybe">Maybe</button>
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
                <p class="mb-0">This info need to be retrieved from the post array rather than hardcoded</p>
              </div>

              <!-- Allow to share the news if it is real -->
              <div class="p-3 alert alert-warning" if={ opts.selectedPost.isResponded && !opts.selectedPost.isFake }>
                <h4 class="font-italic">Why is this real news?</h4>
                <p class="mb-3">This info need to be retrieved from the post array rather than hardcoded</p>
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

    goBack() {
      observable.trigger('postSelected', -1);
      clearTimeout(this.timer);
    }

    check(event) {
      //this.newClass = "xclass";

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

  </script>
  <style>
  .xclass{
    background-color: yellow;
  }
  </style>
</article>
