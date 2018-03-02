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
<<<<<<< HEAD
                <h2 class=" {newClass} blog-post-title">{ opts.selectedPost.title }</h2>
                <p class=" {newClass} blog-post-meta">{ opts.selectedPost.publishedDate } <br> by <a href="#">{ opts.selectedPost.author }</a></p>
=======
                <h2 class="blog-post-title"><span class = "{newClass}">{ opts.selectedPost.title }</span></h2>
                <p class=" blog-post-meta"><span class = "{newClass}">{ opts.selectedPost.publishedDate } </span><br> by <a href="#"><span class = "{newClass}">{ opts.selectedPost.author }</span></a></p>
>>>>>>> master
                <hr>
                <img src="{ opts.selectedPost.imageURL }" class="img-fluid">

                <span>{ opts.selectedPost.bodyText }</span>
                <br>
<<<<<<< HEAD

<p class=" blog-post-meta">{ opts.selectedPost.question }</p>

<label each={ word in opts.selectedPost.choices}><input type="radio"></input>
 { word}
</label>


<label each={ choice in opts.selectedPost.choices }>
  <input type="radio"  value={ opts.selectedPost.answer } onclick={ setAnswer }></input> { choice } <br>
=======
                  <br>
                    <br>

<p class=" blog-post-meta ">{ opts.selectedPost.question }</p>

<label each={ choice in opts.selectedPost.choices }>
  <input type="radio"  value={ opts.selectedPost.answer } onclick={ setAnswer }></input> { choice }<br>
>>>>>>> master
</label>




              </div><!-- /.blog-post -->

            </div><!-- /.blog-main -->

            <aside class="col-md-4 blog-sidebar" if={ opts.selectedPost.isFake }>
              <div>
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick={ check }>Check the fact</button>
                  <br>
                    <br>
              </div>
              <div class="p-3 mb-3 alert alert-danger">
                <h4 class="font-italic">Why is this fake news?</h4>
                <p class="mb-0"> The author takes only a portion of a climate period to support his claim that global warming isn't occurring instead of revealing the entire statistics published by NASA originally. </p>
              </div>

              <div class="p-3 bg-light">
                <h4 class="font-italic">Useful Resources</h4>
                <ol class="list-unstyled mb-0">
                  <li><a href="http://guides.lib.umich.edu/c.php?g=283063&p=4471741">Link 1</a></li>
                  <li><a href="https://www.nytimes.com/2017/01/19/learning/lesson-plans/evaluating-sources-in-a-post-truth-world-ideas-for-teaching-and-learning-about-fake-news.html">Link 2</a></li>
                  <li><a href="http://guides.library.stonybrook.edu/fakenews/resources">Link 3</a></li>
                </ol>
<<<<<<< HEAD
                  <button type="button" class="btn btn-sm btn-outline-secondary" onclick={ check }>Check</button>
=======

>>>>>>> master
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
  check(event){
    this.newClass = "xclass";

    }
  </script>
  <style>
  .xclass{
    background-color: yellow;
  }
  </style>
</article>
