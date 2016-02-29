Ballpark.create([
{
  name: "Yankee Stadium",
  league: "al_east",
  team: "NewYork Yankees",
  city: "NewYork",
  description: "Yankee Stadium is a stadium, used mainly for baseball, located in The Bronx, New York City. It is the home ballpark for the New York Yankees of Major League Baseball (MLB). The $2.3 billion stadium, built with $1.2 billion in public subsidies, replaced the original Yankee Stadium. It is one block north of the original, on the 24-acre former site of Macombs Dam Park; the 8-acre site of the original stadium is now a public park called Heritage Field. The first game at the new Yankee Stadium was a preseason exhibition game against the Chicago Cubs on April 3, 2009; the Yankees won, 7–4. The first regular-season game was played on April 16, a 10–2 Yankee loss to the Cleveland Indians. The overall price tag makes the new Yankee Stadium the most expensive stadium ever built."
},
{
  name: "Nationals Park",
  team: "Washington Nationals",
  league: "nl_east",
  city: "Washington",
  description: "Nationals Park is a baseball park located along the Anacostia River in      the Navy Yard neighborhood of Washington, D.C. It is the home ballpark for the Washington Nationals, the city's Major League Baseball franchise. When the Nationals franchise relocated to Washington, D.C., they temporarily played at RFK Stadium until Nationals Park was completed. It is the first LEED-certified green major professional sports stadium in the United States. The facility hosted the 2008 season's first game (in North America), when the Nationals hosted the Atlanta Braves on March 30, 2008 and the first game played there was a collegiate baseball game."
},
{
  name: "Fenway Park",
  team: "Boston RedSox",
  league: "al_east",
  city: "Boston",
  description: "Fenway Park is a baseball park located in Boston, Massachusetts, at 4 Yawkey Way near Kenmore Square. Since 1912, it has been the home of the Boston Red Sox, the city's Major League Baseball (MLB) franchise. It is the oldest ballpark in MLB.
  Because of its age and constrained location in Boston's dense Fenway–Kenmore neighborhood, the park has been renovated or expanded many times, resulting in quirky features including The Triangle, Pesky's Pole, and the Green Monster in left field. It is the fourth smallest among MLB ballparks by seating capacity, second smallest by total capacity, and one of eight that cannot accommodate at least 40,000 spectators."
},
{
  name: "Marlins Park",
  team: "Miami Marlins",
  league: "nl_east",
  city: "Miami",
  description: "Marlins Park is a baseball park located in Miami, Florida. It is the current home of the Miami Marlins, the city's Major League Baseball franchise. It is located on 17 acres of the former Miami Orange Bowl site in Little Havana, about 2 miles west of Downtown. Construction was completed in March 2012, in time for the 2012 season.
  The stadium is designed in a neomodern form of baseball architecture. Marlins Park was also LEED certified as the greenest MLB park in 2012. The building is the sixth MLB stadium to have a retractable roof. With a seating capacity of 37,442, it is the third-smallest stadium in Major League Baseball by official capacity, and the smallest by actual capacity.
  There is wide consensus among sports fans that a retractable-roof stadium is a must for professional baseball to be viable in Miami due to both the area's blistering summer heat and frequent rain.
  The facility hosted a second-round pool of the 2013 World Baseball Classic and will host the 2017 Major League Baseball All-Star Game."
}
])

Review.create([
{
  general_experience: 4,
  concession: 3,
  extra_activity_rating: 3,
  overall_rating: 3,
  description: "we had a very nice time",
  ballpark_id: 1
},
{
  general_experience: 2,
  concession: 2,
  extra_activity_rating: 5,
  overall_rating: 3,
  description: "It was really not that good",
  ballpark_id: 1
},
{
  general_experience: 5,
  concession: 1,
  extra_activity_rating: 4,
  overall_rating: 3,
  description: "It was amazing, but the food sucked!",
  ballpark_id: 1
},
{
  general_experience: 3,
  concession: 4,
  extra_activity_rating: 4,
  overall_rating: 4,
  description: "It was ok",
  ballpark_id: 3
},
{
  general_experience: 1,
  concession: 1,
  extra_activity_rating: 1,
  overall_rating: 1,
  description: "It was awefull!",
  ballpark_id: 3
}
])
