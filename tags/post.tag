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
    console.log(event);
  }
  share(event) {
    if (this.isFake)
      alert("Think before sharing. It is fake news.");
      else {
        alert("Your friends would appreciate your sharing.");
      }
  }
</script>

</post>
