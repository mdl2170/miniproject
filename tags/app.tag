<app>
  <section class="jumbotron text-center" hide={ selectedPostID != -1}>
        <div class="container">
          <h1 class="jumbotron-heading">Welcome to Fakebook</h1>
          <p class="lead text-muted">What would you like to read today?</p>
        </div>
  </section>

  <div class="album py-5 bg-light" hide={ selectedPostID != -1}>
    <div class="container">

      <div class="row">
          <post each={ postList }></post>
      </div>
    </div>
  </div>

  <article selected-post={ postList[selectedPostID] } if={ selectedPostID != -1 }></article>

  <script>
  var app = this;

  app.selectedPostID = -1;
  app.postList = [
  {
    postID: 0,
    imageURL: "https://climate.nasa.gov/system/news_items/main_images/2683_LOTI_201801_robin_sf200.png",
    postURL: "https://climate.nasa.gov/news/2683/january-2018-was-fifth-warmest-january-on-record/",
    author: "NASA's Goddard Institute for Space Studies",
    publishedDate: "02/15/2018",
    linkText: "NASA",
    bodyText: "January 2018 was the fifth warmest January in 138 years of modern record-keeping, according to a monthly analysis of global temperatures by scientists at NASA's Goddard Institute for Space Studies (GISS) in New York. It was cooled somewhat by the current La Niña phase of the El Niño-Southern Oscillation. Last month was +0.78°C warmer than the average January of the 1951-1980 period. The only months of January warmer than that occurred in 2016 (+1.16°C), 2017 (+0.97°C), 2007 (+0.95°C), and in 2015 (+0.81°C). The East Coast of North America was cooler than normal — 1-2°C below the 1951-1980 mean — whereas the rest of the continent was about 5°C warmer than that period.",
    title: "January 2018 was fifth warmest January on record",
    isFake: false,
    question: "Have you checked the date?",
		choices: [
					"yes",
					"no",

				],
				answer: "yes"
  },
  {
    postID: 1,
    imageURL: "https://www.cargill.com/image/1432112550712/preview-cargill-sets-new-goal-to-address-climate-change.jpg",
    postURL: "https://www.snopes.com/nasa-data-global-warming/",
    author: "Mike Adams",
    publishedDate: "02/21/2018",
    linkText: "Natural News",
    bodyText: "NASA’s own data reveal that world-wide ocean levels have been falling for nearly two years, dropping from a variation of roughly 87.5mm to below 85mm. These data, of course, clearly contradict the false narrative of rapid, never-ending rising ocean levels that flood continents and drown cities — a key element of the climate change “boogeyman” fiction that’s used to scare gullible youth into making Al Gore rich.",
    title: "Climate Change",
<<<<<<< HEAD
    isFake: true
    // question: "Have you checked the date?",
    // choices: [
    //       "yes",
    //       "no",
    //
    //     ],
    //     answer: "yes"
=======
    isFake: true,
    question: "Are the references accurate?",
    choices: [
          "yes",
          "no",
          "no idea",
        ],
        answer: "yes"
>>>>>>> master
  },
  {
    postID: 2,
    imageURL: "https://i.imgur.com/VW4mhhH.png",
    postURL: "http://time.com/5169210/us-gun-control-laws-history-timeline/",
    author: "Sarah Gray",
    publishedDate: "02/22/2018",
    linkText: "Time.com",
    bodyText: "Through their grief, the students from Marjory Stoneman Douglas High School have become a political force. One week after 19-year-old Nikolas Cruz allegedly used an AR-15 to shoot and kill 17 people at the school, around 100 students met with lawmakers in the Florida state capital to advocate for gun control. They also met with President Trump in the White House Wednesday. In organizing the March For Our Lives, they’ll rally next month in Washington, D.C. But with the right of gun ownership enshrined in the U.S. Constitution, gun regulations remain a thorny issue in the U.S. Throughout history, there have been several laws and Supreme Court cases that have shaped the Second Amendment. This timeline outlines the most important events in influencing the country’s federal gun policy.",
    title: "Here’s a Timeline of the Major Gun Control Laws in America",
<<<<<<< HEAD
    isFake: false
    // question: "Have you checked the date?",
    // choices: [
    //       "yes",
    //       "no",
    //
    //     ],
    //     answer: "yes"
  },
  {
    postID: 3,
    imageURL: "https://i.imgur.com/VW4mhhH.png",
    postURL: "http://time.com/5169210/us-gun-control-laws-history-timeline/",
    author: "Sarah Gray",
    publishedDate: "02/22/2018",
    linkText: "Time.com",
    bodyText: "Through their grief, the students from Marjory Stoneman Douglas High School have become a political force. One week after 19-year-old Nikolas Cruz allegedly used an AR-15 to shoot and kill 17 people at the school, around 100 students met with lawmakers in the Florida state capital to advocate for gun control. They also met with President Trump in the White House Wednesday. In organizing the March For Our Lives, they’ll rally next month in Washington, D.C. But with the right of gun ownership enshrined in the U.S. Constitution, gun regulations remain a thorny issue in the U.S. Throughout history, there have been several laws and Supreme Court cases that have shaped the Second Amendment. This timeline outlines the most important events in influencing the country’s federal gun policy.",
    title: "Here’s a Timeline of the Major Gun Control Laws in America",
    isFake: true
    // question: "Have you checked the date?",
    // choices: [
    //       "yes",
    //       "no",
    //
    //     ],
    //     answer: "yes"
  },
=======
    isFake: false,
    question: "Are the references accurate?",
    choices: [
          "yes",
          "no",
          "no idea",
        ],
        answer: "yes"
  }
>>>>>>> master
];

  observable.on('postSelected', function(post){
      if( post == -1)
        app.selectedPostID = -1;
      else
        app.selectedPostID = post.postID;

      riot.update();
  });

  this.on('update', function() {
    //do something
  });

  </script>
</app>
