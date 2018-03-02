<post class="col-md-4">
  <div class="card mb-4 box-shadow">
    <img class="card-img-top" src="{ imageURL }" style="height: 225px; width: 100%; display: block;">
    <div class="card-body">
      <h4>{ title }</h4>
      <p><small class="text-muted">{ publishedDate }</small><br/>
      <small class="text-muted">by { author }</small></p>
      <p class="card-text">{ bodyText }</p>
        <div class="btn-group">
          <button type="button" class="btn btn-sm btn-outline-secondary"  onclick={ read }>Read</button>
          <button type="button" class="btn btn-sm btn-outline-secondary" onclick={ share }>Share</button>
      </div>
    </div>
  </div>

<script>
  read(event) {
    observable.trigger('postSelected', this);
  }

  share(event) {
    if (this.isFake)
      alert("Let's find out more about this article.");
      else {
        alert("Noteworthy news to share.");
      }
  }
</script>

</post>
