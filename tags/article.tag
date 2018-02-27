<article>
  <div class="container">
      <header class="py-3">
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
                <hr>
                <img src="{ opts.selectedPost.imageURL }" class="img-fluid">

                <span>{ opts.selectedPost.bodyText }</span>

              </div><!-- /.blog-post -->

            </div><!-- /.blog-main -->

            <aside class="col-md-4 blog-sidebar" if={ opts.selectedPost.isFake }>
              <div class="p-3 mb-3 alert alert-danger">
                <h4 class="font-italic">Why is this fake news?</h4>
                <p class="mb-0">Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
              </div>

              <div class="p-3 bg-light">
                <h4 class="font-italic">Useful Resources</h4>
                <ol class="list-unstyled mb-0">
                  <li><a href="#">Link 1</a></li>
                  <li><a href="#">Link 2</a></li>
                  <li><a href="#">Link 3</a></li>
                  <li><a href="#">Link 4</a></li>
                </ol>
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

  goBack() {
      observable.trigger('postSelected', -1);
  }

  </script>
</article>
