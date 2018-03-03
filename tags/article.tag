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

            <aside class="col-md-4 blog-sidebar" if={ opts.selectedPost.isFake }>
              <div class="p-3 mb-3 bg-light">
                <h4 class="font-italic">Is this fake news?</h4>
                <button type="button" class="btn btn-sm btn-outline-secondary" onclick={ check }>Yes</button>
                <button type="button" class="btn btn-sm btn-outline-secondary" onclick={ check }>No</button>
                <button type="button" class="btn btn-sm btn-outline-secondary" onclick={ check }>Maybe</button>
              </div>
              <div class="p-3 mb-3 alert alert-danger">
                <h4 class="font-italic">Why is this fake news?</h4>
                <p class="mb-0"> The author takes only a portion of a climate period to support his claim that global warming isn't occurring instead of revealing the entire statistics published by NASA originally. </p>
              </div>
            </aside><!-- /.blog-sidebar -->

            <aside class="col-md-4 blog-sidebar" if={ !opts.selectedPost.isFake }>
              <div class="p-3 alert alert-primary">
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

    goBack() {
      observable.trigger('postSelected', -1);
      clearTimeout(this.timer);
    }

    check(event){
      this.newClass = "xclass";
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
