<app>
  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row">
          <post each={ postList }></post>
      </div>
    </div>
  </div>

  <script type="text/javascript">
  this.postList = [
  {
    imageURL: "https://climate.nasa.gov/system/news_items/main_images/2683_LOTI_201801_robin_sf200.png",
    postURL: "https://climate.nasa.gov/news/2683/january-2018-was-fifth-warmest-january-on-record/",
    author: "NASA's Goddard Institute for Space Studies",
    publishedDate: "02/15/2018",
    linkText: "NASA",
    bodyText: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    title: "January 2018 was fifth warmest January on record",
    isFake: true,
  },
  {
    imageURL: "https://placehold.it/400x300",
    postURL: "",
    author: "Tom Hanks",
    publishedDate: "02/21/2018",
    linkText: "ABC News",
    bodyText: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    title: "This is headline",
    isFake: false,
  }
  ]
  </script>
</app>
