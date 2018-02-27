<article>
  <div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            <a class="btn btn-sm btn-outline-secondary" href="#" onclick={ goBack }>Go back</a>
          </div>
        </div>
      </header>
    </div>

    <main role="main" class="container">
          <div class="row">
            <div class="col-md-8 blog-main">
              <div class="blog-post">
                <h2 class="blog-post-title">{ opts.selectedPost.title }</h2>
                <p class="blog-post-meta">{ opts.selectedPost.publishedDate } by <a href="#">{ opts.selectedPost.author }</a></p>
                <img src="{ opts.selectedPost.imageURL }" class="img-fluid">

                <span>{ opts.selectedPost.bodyText }</span>

              </div><!-- /.blog-post -->

            </div><!-- /.blog-main -->

            <aside class="col-md-4 blog-sidebar">
              <div class="p-3 mb-3 bg-light rounded">
                <h4 class="font-italic">About</h4>
                <p class="mb-0">Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
              </div>

              <div class="p-3">
                <h4 class="font-italic">Archives</h4>
                <ol class="list-unstyled mb-0">
                  <li><a href="#">March 2014</a></li>
                  <li><a href="#">February 2014</a></li>
                  <li><a href="#">January 2014</a></li>
                  <li><a href="#">December 2013</a></li>
                  <li><a href="#">November 2013</a></li>
                  <li><a href="#">October 2013</a></li>
                  <li><a href="#">September 2013</a></li>
                  <li><a href="#">August 2013</a></li>
                  <li><a href="#">July 2013</a></li>
                  <li><a href="#">June 2013</a></li>
                  <li><a href="#">May 2013</a></li>
                  <li><a href="#">April 2013</a></li>
                </ol>
              </div>
            </aside><!-- /.blog-sidebar -->

          </div><!-- /.row -->

        </main>
  <script>

  goBack() {
      observable.trigger('postSelected', -1);
  }

  </script>
</article>
