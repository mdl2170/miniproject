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
  app.correct = 0;
  app.incorrect = 0;
  app.notification = 0;
  app.postList = [
  {
    postID: 0,
    imageURL: "https://climate.nasa.gov/system/news_items/main_images/2683_LOTI_201801_robin_sf200.png",
    postURL: "https://climate.nasa.gov/news/2683/january-2018-was-fifth-warmest-january-on-record/",
    author: "NASA's Goddard Institute for Space Studies",
    publishedDate: "02/15/2018",
    linkText: "NASA",
    excerpt: "January 2018 was the fifth warmest January in 138 years of modern record-keeping, according to a monthly analysis of global temperatures by scientists at NASA's Goddard Institute for Space Studies (GISS) in New York. It was cooled somewhat by the current La Niña phase of the El Niño-Southern Oscillation. Last month was +0.78°C warmer than the average January of the 1951-1980 period.",
    bodyText: "<p>January 2018 was the fifth warmest January in 138 years of modern record-keeping, according to a monthly analysis of global temperatures by scientists at NASA's Goddard Institute for Space Studies (GISS) in New York. It was cooled somewhat by the current La Niña phase of the El Niño-Southern Oscillation.</p><p>Last month was +0.78°C warmer than the average January of the 1951-1980 period. The only months of January warmer than that occurred in 2016 (+1.16°C), 2017 (+0.97°C), 2007 (+0.95°C), and in 2015 (+0.81°C). The East Coast of North America was cooler than normal — 1-2°C below the 1951-1980 mean — whereas the rest of the continent was about 5°C warmer than that period.</p><p>The monthly analysis by the GISS team is assembled from publicly available data acquired by about 6,300 meteorological stations around the world, ship- and buoy-based instruments measuring sea surface temperature, and Antarctic research stations.</p><div>The modern global temperature record begins around 1880 because previous observations didn't cover enough of the planet. Monthly analyses are sometimes updated when additional data becomes available, and the results are subject to change.</div> ",

    bodyTextHighlight: "<p><span class='highLightClass' data-toggle='popover' data-content='Did you check the date? Is it right?' data-original-title='Think again' data-placement='top'>January 2018 was the fifth warmest January in 138 years of modern record-keeping</span>, according to a monthly analysis of global temperatures by scientists at NASA's Goddard Institute for Space Studies (GISS) in New York. It was cooled somewhat by the current La Niña phase of the El Niño-Southern Oscillation.</p><p>Last month <span class='highLightClass' data-toggle='popover' data-content='Did you check the data? Is this reasonable?' data-original-title='Think again' data-placement='top' >was +0.78°C warmer than the average January of the 1951-1980 period</span>. The only months of January warmer than that occurred in 2016 (+1.16°C), 2017 (+0.97°C), 2007 (+0.95°C), and in 2015 (+0.81°C). The East Coast of North America was cooler than normal — 1-2°C below the 1951-1980 mean — whereas the rest of the continent was about 5°C warmer than that period.</p><p>The monthly analysis by the GISS team is assembled from publicly available data acquired by about 6,300 meteorological stations around the world, ship- and buoy-based instruments measuring sea surface temperature, and Antarctic research stations.</p><span class='highLightClass' data-toggle='popover' data-content='Did you check the cause and effect?' data-original-title='Think again' data-placement='top' >The modern global temperature record begins around 1880 because previous observations didn't cover enough of the planet.</span>  Monthly analyses are sometimes updated when additional data becomes available, and the results are subject to change.",

    title: "January 2018 was fifth warmest January on record",
    isFake: false,
    isRead: false,
    isResponded: 0,
    question: [
      "Is the date reference accurate?",
      "Is the resource clear?",
      "Do you the author is reliable?"

    ]
  },
  {
    postID: 1,
    imageURL: "http://sustyvibes.com/wp-content/uploads/2017/05/climate-change.jpg",
    postURL: "https://www.snopes.com/nasa-data-global-warming/",
    author: "Mike Adams",
    publishedDate: "02/21/2018",
    linkText: "Natural News",
    excerpt: "NASA’s own data reveal that world-wide ocean levels have been falling for nearly two years, dropping from a variation of roughly 87.5mm to below 85mm. These data, of course, clearly contradict the false narrative of rapid, never-ending rising ocean levels that flood continents and drown cities — a key element of the climate change “boogeyman” fiction that’s used to scare gullible youth into making Al Gore rich.",

    bodyText: "<p>NASA’s own data reveal that world-wide ocean levels have been falling for nearly two years, dropping from a variation of roughly 87.5mm to below 85mm. These data, of course, clearly contradict the false narrative of rapid, never-ending rising ocean levels that flood continents and drown cities — a key element of the climate change “boogeyman” fiction that’s used to scare gullible youth into making Al Gore rich.</p><p>The short term fall over the last year or so reported on the Natural News website is nothing out of the ordinary and in fact the fall seems less than several previous examples of sea level fall, such as [the drop documented in 2010-2011]. It does not seem to be a particularly noteworthy event. In most cases, though, water that falls on land eventually drains into the ocean. Even if a whole lot of rain fell in South America’s Amazon, for example, it could slow sea-level rise for only about a couple of months, as it slowly made its way to the sea. So in order to make sea levels fall, the water had to be stored in a place where it didn’t reach the ocean for a long while. That place, it turns out, was Australia.</p>Lake Eyre is the lowest point in Australia. It’s usually a dry, salty flat. But when it rains heavily, the basin fills, and the lake teems with new life, as long-dormant seeds spring to life and birds flock to the lake. From 2010 to 2011, enough rain fell on Australia to fill the lower part of the lake almost completely, and the upper portion at least 75 percent.Australia got about a foot of rain more than normal over that period, said [National Center for Atmospheric Research scientist John] Fasullo. The continent stored that excess water for long enough to change global sea levels. That the world’s smallest continent can affect global sea levels this way is pretty extraordinary, said Fasullo. It’s also rare. […] In addition to La Niña, other climate variations also played a role. Together, they forced the extraordinary rainfall and water storage in the Australian continent.</p><p>Of course, this leveling does not conflict with our understanding of sea level rise and its main drivers. It is well known for example that sea level falls (in an anomalous sense) at the end of an El Niño due to drought subsiding over many tropical land areas such as the Amazon (water moves from the ocean to land surface) and heat being released from the ocean (as the tropical upper Pacific Ocean releases heat to the atmosphere, causing contraction). [The] recent leveling of sea level rise comes on the heels of an unprecedented rate of rise during the four years that preceded it (2011-14). In addition to global warming, this rise was also strongly influenced by the El Niño-La Niña cycle and so it too should not be oversold. One or two or three years of weather means very little in the long-term record of sea-level rise just as it would have very little meaning for global temperature records. Due to a variety of atmospheric circulation patterns and variations, temperatures vary from year to year as does rainfall, etc., the recent 4 year drought in the west is a good example.</p>",

    bodyTextHighlight: "<p>NASA’s own data reveal that world-wide ocean levels have been falling for nearly two years, dropping from a variation of roughly 87.5mm to below 85mm. <span class='highLightClass' data-toggle='popover' data-content='Did you check the date? Is it right?' data-original-title='Think again' data-placement='top'>These data, of course, clearly contradict the false narrative of rapid, never-ending rising ocean levels that flood continents and drown cities</span> — a key element of the climate change “boogeyman” fiction that’s used to scare gullible youth into making Al Gore rich.</p><p>The short term fall over the last year or so reported on the Natural News website is nothing out of the ordinary and in fact the fall seems less than several previous examples of sea level fall, such as [the drop documented in 2010-2011]. It does not seem to be a particularly noteworthy event. In most cases, though, water that falls on land eventually drains into the ocean. Even if a whole lot of rain fell in South America’s Amazon, for example, it could slow sea-level rise for only about a couple of months, as it slowly made its way to the sea. So in order to make sea levels fall, the water had to be stored in a place where it didn’t reach the ocean for a long while. That place, it turns out, was Australia.</p>Lake Eyre is the lowest point in Australia. It’s usually a dry, salty flat. But when it rains heavily, the basin fills, and the lake teems with new life, as long-dormant seeds spring to life and birds flock to the lake. <span class='highLightClass' data-toggle='popover' data-content='Did you check the date? Is it right?' data-original-title='Think again' data-placement='top'>From 2010 to 2011, enough rain fell on Australia to fill the lower part of the lake almost completely, and the upper portion at least 75 percent</span>.Australia got about a foot of rain more than normal over that period, said [National Center for Atmospheric Research scientist John] Fasullo. The continent stored that excess water for long enough to change global sea levels. That the world’s smallest continent can affect global sea levels this way is pretty extraordinary, said Fasullo. It’s also rare. […] In addition to La Niña, other climate variations also played a role. Together, they forced the extraordinary rainfall and water storage in the Australian continent.</p><p>Of course, this leveling does not conflict with our understanding of sea level rise and its main drivers. It is well known for example that sea level falls (in an anomalous sense) at the end of an El Niño due to drought subsiding over many tropical land areas such as the Amazon (water moves from the ocean to land surface) and heat being released from the ocean (as the tropical upper Pacific Ocean releases heat to the atmosphere, causing contraction). <span class='highLightClass' data-toggle='popover' data-content='Did you check the date? Is it right?' data-original-title='Think again' data-placement='top'>[The] recent leveling of sea level rise comes on the heels of an unprecedented rate of rise during the four years that preceded it (2011-14)</span>. In addition to global warming, this rise was also strongly influenced by the El Niño-La Niña cycle and so it too should not be oversold. One or two or three years of weather means very little in the long-term record of sea-level rise just as it would have very little meaning for global temperature records. Due to a variety of atmospheric circulation patterns and variations, temperatures vary from year to year as does rainfall, etc., the recent 4 year drought in the west is a good example.</p>",


    title: "Climate Change",
    isFake: true,
    isRead: false,
    isResponded: 0,
    question: "Did you check the resources?",
    choices: [
          "yes",
          "no",
          "no idea",
        ],
        answer: "yes"
  },
  {
    postID: 2,
    imageURL: "https://i.imgur.com/VW4mhhH.png",
    postURL: "http://time.com/5169210/us-gun-control-laws-history-timeline/",
    author: "Sarah Gray",
    publishedDate: "02/22/2018",
    linkText: "Time.com",
    excerpt: "Through their grief, the students from Marjory Stoneman Douglas High School have become a political force. One week after 19-year-old Nikolas Cruz allegedly used an AR-15 to shoot and kill 17 people at the school, around 100 students met with lawmakers in the Florida state capital to advocate for gun control. They also met with President Trump in the White House Wednesday.",
    bodyTextHighlight: "<p>Through their grief, the students from Marjory Stoneman Douglas High School have become a political force. One week after 19-year-old Nikolas Cruz allegedly used an AR-15 to shoot and kill 17 people at the school, around 100 students met with lawmakers in the Florida state capital to advocate for gun control. <span class='highLightClass' data-toggle='popover' data-content='Did you check the date? Is it right?' data-original-title='Think again' data-placement='top'>They also met with President Trump in the White House Wednesday.</span>. In organizing the March For Our Lives, they’ll rally next month in Washington, D.C. </p><p>But with the right of gun ownership enshrined in the U.S. Constitution, gun regulations remain a thorny issue in the U.S. Throughout history, there have been several laws and Supreme Court cases that have shaped the Second Amendment. This timeline outlines the most important events in influencing the country’s federal gun policy.</p><p><h3>1791</h3> On Dec. 15, 1791, ten amendments to the U.S. Constitution — eventually known as the Bill of Rights — were ratified. The second of them said: “A well regulated Militia, being necessary to the security of a free State, the right of the people to keep and bear Arms, shall not be infringed.”</p><p><h3>1934</h3> The first piece of national gun control legislation was passed on June 26, 1934. The National Firearms Act (NFA) — part of President Franklin Delano Roosevelt’s “New Deal for Crime“— was meant to curtail “gangland crimes of that era such as the St. Valentine’s Day Massacre.”</p><p>The NFA imposed a tax on the manufacturing, <span class='highLightClass' data-toggle='popover' data-content='Did you check the date? Is it right?' data-original-title='Think again' data-placement='top'>selling, and transporting of firearms listed in the law, among them short-barrel shotguns and rifles</span>, machine guns, firearm mufflers and silencers. Due to constitutional flaws, the NFA was modified several times. The $200 tax, which was high for the era, was put in place to curtail the transfer of these weapons.</p><p><h3>1938</h3>The Federal Firearms Act (FFA) of 1938 required gun manufacturers, importers, and dealers to obtain a federal firearms license. It also defined a group of people, including convicted felons, who could not purchase guns, and mandated that gun sellers keep customer records. The FFA was repealed in 1968 by the Gun Control Act (GCA), though many of its provisions were reenacted by the GCA.</p><p><h3>1939</h3>In 1939 the U.S. Supreme Court heard the case United States v. Miller, ruling that through the National Firearms Act of 1934, Congress could regulate the interstate selling of a short barrel shotgun. The court stated that there was no evidence that a sawed off shotgun “has some reasonable relationship to the preservation or efficiency of a well regulated militia,” and thus “we cannot say that the Second Amendment guarantees the right to keep and bear such an instrument.”</p><p><h3>1968</h3><p>Following the assassinations of President John Kennedy, <span class='highLightClass' data-toggle='popover' data-content='Did you check the date? Is it right?' data-original-title='Think again' data-placement='top'>Attorney General Robert Kennedy and Dr. Martin Luther King, Jr., President Lyndon B. Johnson pushed for the passage of the Gun Control Act of 1968</span>. The GCA repealed and replaced the FFA, updated Title II of the NFA to fix constitutional issues, added language about “destructive devices” (such as bombs, mines and grenades) and expanded the definition of “machine gun.”</p><p>Overall the bill banned importing guns that have “no sporting purpose,” imposed age restrictions for the purchase of handguns (gun owners had to be 21), <span class='highLightClass' data-toggle='popover' data-content='Did you check the date? Is it right?' data-original-title='Think again' data-placement='top'>prohibited felons, the mentally ill, and others from purchasing guns</span>, required that all manufactured or imported guns have a serial number, and according to the ATF, imposed “stricter licensing and regulation on the firearms industry.”</p>",

    bodyText: "<p>Through their grief, the students from Marjory Stoneman Douglas High School have become a political force. One week after 19-year-old Nikolas Cruz allegedly used an AR-15 to shoot and kill 17 people at the school, around 100 students met with lawmakers in the Florida state capital to advocate for gun control. They also met with President Trump in the White House Wednesday. In organizing the March For Our Lives, they’ll rally next month in Washington, D.C. </p><p>But with the right of gun ownership enshrined in the U.S. Constitution, gun regulations remain a thorny issue in the U.S. Throughout history, there have been several laws and Supreme Court cases that have shaped the Second Amendment. This timeline outlines the most important events in influencing the country’s federal gun policy.</p><p><h3>1791</h3> On Dec. 15, 1791, ten amendments to the U.S. Constitution — eventually known as the Bill of Rights — were ratified. The second of them said: “A well regulated Militia, being necessary to the security of a free State, the right of the people to keep and bear Arms, shall not be infringed.”</p><p><h3>1934</h3> The first piece of national gun control legislation was passed on June 26, 1934. The National Firearms Act (NFA) — part of President Franklin Delano Roosevelt’s “New Deal for Crime“— was meant to curtail “gangland crimes of that era such as the St. Valentine’s Day Massacre.”</p><p>The NFA imposed a tax on the manufacturing, selling, and transporting of firearms listed in the law, among them short-barrel shotguns and rifles, machine guns, firearm mufflers and silencers. Due to constitutional flaws, the NFA was modified several times. The $200 tax, which was high for the era, was put in place to curtail the transfer of these weapons.</p><p><h3>1938</h3>The Federal Firearms Act (FFA) of 1938 required gun manufacturers, importers, and dealers to obtain a federal firearms license. It also defined a group of people, including convicted felons, who could not purchase guns, and mandated that gun sellers keep customer records. The FFA was repealed in 1968 by the Gun Control Act (GCA), though many of its provisions were reenacted by the GCA.</p><p><h3>1939</h3>In 1939 the U.S. Supreme Court heard the case United States v. Miller, ruling that through the National Firearms Act of 1934, Congress could regulate the interstate selling of a short barrel shotgun. The court stated that there was no evidence that a sawed off shotgun “has some reasonable relationship to the preservation or efficiency of a well regulated militia,” and thus “we cannot say that the Second Amendment guarantees the right to keep and bear such an instrument.”</p><p><h3>1968</h3><p>Following the assassinations of President John Kennedy, Attorney General Robert Kennedy and Dr. Martin Luther King, Jr., President Lyndon B. Johnson pushed for the passage of the Gun Control Act of 1968. The GCA repealed and replaced the FFA, updated Title II of the NFA to fix constitutional issues, added language about “destructive devices” (such as bombs, mines and grenades) and expanded the definition of “machine gun.”</p><p>Overall the bill banned importing guns that have “no sporting purpose,” imposed age restrictions for the purchase of handguns (gun owners had to be 21), prohibited felons, the mentally ill, and others from purchasing guns, required that all manufactured or imported guns have a serial number, and according to the ATF, imposed “stricter licensing and regulation on the firearms industry.”</p>",

    title: "Here’s a Timeline of the Major Gun Control Laws in America",
    isFake: false,
    isRead: false,
    isResponded: 0,
    question: "Is the U.S. Constitution reference accurate?",
    choices: [
          "yes",
          "no",
          "no idea",
        ],
        answer: "yes"
  }
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
