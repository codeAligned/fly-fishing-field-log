River.destroy_all
Station.destroy_all
State.destroy_all
User.destroy_all


State.create(name: "Alabama")
State.create(name: "Alaska")
State.create(name: "Arizona")
State.create(name: "Arkansas")
State.create(name: "California")
State.create(name: "Colorado")
State.create(name: "Connecticut")
State.create(name: "Delaware")
State.create(name: "Florida")
State.create(name: "Georgia")
State.create(name: "Hawaii")
State.create(name: "Idaho")
State.create(name: "Illinois")
State.create(name: "Indiana")
State.create(name: "Iowa")
State.create(name: "Kansas")
State.create(name: "Kentucky")
State.create(name: "Louisiana")
State.create(name: "Maine")
State.create(name: "Maryland")
State.create(name: "Massachusetts")
State.create(name: "Michigan")
State.create(name: "Minnesota")
State.create(name: "Mississippi")
State.create(name: "Missouri")
State.create(name: "Montana")
State.create(name: "Nebraska")
State.create(name: "Nevada")
State.create(name: "New Hampshire")
State.create(name: "New Jersey")
State.create(name: "New Mexico")
State.create(name: "New York")
State.create(name: "North Carolina")
State.create(name: "North Dakota")
State.create(name: "Ohio")
State.create(name: "Oklahoma")
State.create(name: "Oregon")
State.create(name: "Pennsylvania")
State.create(name: "Rhode Island")
State.create(name: "South Carolina")
State.create(name: "South Dakota")
State.create(name: "Tennessee")
State.create(name: "Texas")
State.create(name: "Utah")
State.create(name: "Vermont")
State.create(name: "Virginia")
State.create(name: "Washington")
State.create(name: "West Virginia")
State.create(name: "Wisconsin")
State.create(name: "Wyoming")

30.times do
  name = Faker::Name.name
  age = Faker::Number.between(18, 70)
  state = Faker::Number.between(1, 50)
  User.create(name: name, age: age, password: 'password', state_id: state)
end

20.times do
  date = Faker::Date.between(2.days.ago, Date.today)
  text = Faker::Hipster.paragraph
  user_id = Faker::Number.between(1, 30)
  Post.create(name: date, text: text, user_id: user_id)
end
# User.create(name: "Gina", age: 27, password: "enzo", state_id: State.find_by(name: "Colorado").id)
# User.create(name: "Sharon", age: 23, password: "fitz", state_id: State.find_by(name: "Wyoming").id)
# User.create(name: "Hannah", age: 29, password: "lyla", state_id: State.find_by(name: "Georgia").id)

River.create(name: "UPPER SOUTH PLATTE") #1
River.create(name: "CLEAR") #2
River.create(name: "ST. VRAIN") #3
River.create(name: "BIG THOMPSON") #4
River.create(name: "ARKANSAS HEADWATERS") #5
River.create(name: "UPPER ARKANSAS") #6
River.create(name: "COLORADO") #7
River.create(name: "BLUE") #8
River.create(name: "ROARING FORK") #9
River.create(name: "EAGLE") #10
River.create(name: "EAST TAYLOR") #11
River.create(name: "GUNNISON") #12
River.create(name: "SAN MIGUEL") #13
River.create(name: "YAMPA") #14
River.create(name: "ANIMAS") #15
River.create(name: "SAN JUAN") #16

Station.create(station_name: "SOUTH PLATTE ABOVE CHEESMAN LAKE, CO", gage_height: 5.51, discharge: 227, river_id: 1)
Station.create(station_name: "SOUTH PLATTE RIVER BLW BRUSH CRK NEAR TRUMBULL, CO", gage_height: 3.82, discharge: 331, river_id: 1)
Station.create(station_name: "CLEAR CREEK AT GOLDEN, CO", gage_height: 4.35, discharge: 142, river_id: 2)
Station.create(station_name: "BOULDER CREEK AT NORTH 75TH ST", gage_height: 4.89, discharge: 64, river_id: 3)
Station.create(station_name: "BIG THOMPSON RIVER AT LOVELAND, CO", gage_height: 1.28, discharge: 52, river_id: 4)
Station.create(station_name: "ARKANSAS BELOW GRANITE, CO", gage_height: 3.91, discharge: 275, river_id: 5)
Station.create(station_name: "ARKANSAS AT PARKDALE, CO", gage_height: 2.91, discharge: 564, river_id: 5)
Station.create(station_name: "ARKANSAS AT PUEBLO, CO", gage_height: 9.41, discharge: 605, river_id: 5)
Station.create(station_name: "ARKANSAS NEAR AVONDALE, CO", gage_height: 3.25, discharge: 1250, river_id: 5)
Station.create(station_name: "ARKANSAS AT LAS ANIMAS, CO", gage_height: 6.9, discharge: 197, river_id: 6)
Station.create(station_name: "ARKANSAS BELOW JOHN MARTIN RESERVOIR, CO", gage_height: 2.74, discharge: 555, river_id: 6)
Station.create(station_name: "ARKANSAS NEAR GRANADA, CO", gage_height: 6.05, discharge: 155, river_id: 6)
Station.create(station_name: "COLORADO RIVER NEAR GRANBY, CO", gage_height: 1.83, discharge: 105, river_id: 7)
Station.create(station_name: "WILLIAMS FORK BELOW WILLIAMS FORK RESERVOIR, CO", gage_height: 1.92, discharge: 183, river_id: 7)
Station.create(station_name: "COLORADO RIVER NEAR KREMLING, CO", gage_height: 6.02, discharge: 1260, river_id: 7)
Station.create(station_name: "PINEY RIVER NEAR MINTURN, CO", gage_height: 3.24, discharge: 6.9, river_id: 7)
Station.create(station_name: "BLUE RIVER BELOW DILLON, CO", gage_height: 1.08, discharge: 107, river_id: 8)
Station.create(station_name: "BLUE RIVER BELOW GREEN MOUNTAIN RESERVOIR, CO", gage_height: 5.53, discharge: 715, river_id: 8)
Station.create(station_name: "SNAKE RIVER NEAR MONTEZUMA, CO", gage_height: 1.43, discharge: 44, river_id: 8)
Station.create(station_name: "FRYINGPAN NEAR RUEDI, CO", gage_height: 2.11, discharge: 294, river_id: 9)
Station.create(station_name: "ROARING FORK NEAR ASPEN, CO", gage_height: 1.27, discharge: 25, river_id: 9)
Station.create(station_name: "ROARING FORK NEAR EMMA, CO", gage_height: 5.68, discharge: 547, river_id: 9)
Station.create(station_name: "CRYSTAL RIVER NEAR REDSTONE, CO", gage_height: 1.07, discharge: 113, river_id: 9)
Station.create(station_name: "ROARING FORK AT GLENWOOD SPRINGS, CO", gage_height: 3.18, discharge: 801, river_id: 9)
Station.create(station_name: "EAGLE RIVER BELOW GYPSUM, CO", gage_height: 4.41, discharge: 238, river_id: 10)
Station.create(station_name: "EAGLE RIVER NEAR WOLCOTT, CO", gage_height: 3.75, discharge: 204, river_id: 10)
Station.create(station_name: "TAYLOR RIVER BELOW TAYLOR PARK RESERVOIR, CO", gage_height: 4.20, discharge: 249, river_id: 11)
Station.create(station_name: "TAYLOR RIVER AT ALMONT, CO", gage_height: 2.12, discharge: 304, river_id: 11)
Station.create(station_name: "EAST RIVER BELOW CEMENT CREEK NEAR CRESTED BUTTE, CO", gage_height: 1.16, discharge: 108, river_id: 11)
Station.create(station_name: "GUNNISON RIVER NEAR GUNNISON CO", gage_height: 1.58, discharge: 497, river_id: 12)
Station.create(station_name: "CIMARRON RIVER NEAR CIMARRON, CO", gage_height: 1.89, discharge: 119, river_id: 12)
Station.create(station_name: "NORTH FORK GUNNISON NEAR SOMERSET, CO", gage_height: 2, discharge: 237, river_id: 12)
Station.create(station_name: "NORTH FORK GUNNISON ABOVE MOUTH NEAR LAZEAR, CO", gage_height: 3.12, discharge: 168, river_id: 12)
Station.create(station_name: "SAN MIGUEL NEAR PLACERVILLE, CO", gage_height: 2.74, discharge: 325, river_id: 13)
Station.create(station_name: "SAN MIGUEL AT BROOKS BRIDGE NEAR NUCLA, CO", gage_height: 2.65, discharge: 263, river_id: 13)
Station.create(station_name: "SAN MIGUEL AT URAVAN, CO", gage_height: 3.34, discharge: 218, river_id: 13)
Station.create(station_name: "YAMPA ABOVE STAGECOACH RESERVOIR, CO", gage_height: 2.22, discharge: 41, river_id: 14)
Station.create(station_name: "YAMPA BELOW STAGECOACH RESERVOIR, CO", gage_height: 2.86, discharge: 59, river_id: 14)
Station.create(station_name: "YAMPA RIVER AT STEAMBOAT SPRINGS, CO", gage_height: 1.13, discharge: 86, river_id: 14)
Station.create(station_name: "YAMPA BELOW CRAIG, CO", gage_height: 0.85, discharge: 133, river_id: 14)
Station.create(station_name: "ANIMAS BELOW SILVERTON, CO", gage_height: 2.29, discharge: 228, river_id: 15)
Station.create(station_name: "ANIMAS RIVER AT DURANGO, CO", gage_height: 2.85, discharge: 540, river_id: 15)
Station.create(station_name: "MINERAL CREEK AT SILVERTON, CO", gage_height: 1.55, discharge: 118, river_id: 15)
Station.create(station_name: "SAN JUAN AT PAGOSA SPRINGS, CO", gage_height: 4.03, discharge: 144, river_id: 16)
Station.create(station_name: "SAN JUAN NEAR CARRACAS, CO", gage_height: 2.74, discharge: 222, river_id: 16)
Station.create(station_name: "LOS PINOS AT LA BOCA, CO", gage_height: 3.82, discharge: 148, river_id: 16)
Station.create(station_name: "SAN JUAN AT FOUR CORNERS, CO", gage_height: 6.23, discharge: 1070, river_id: 16)

# <---- Hatches ---->
Hatch.create(bug_type: "Caddis", name: "American Grannom", color: "Bright Green to Greenish Brown", dates: "Mar 1 - May 15", emergence: "Early Morning & Afternoon", size: "10 - 14", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Caddis", name: "Great Gray Spotted Sedge", color: "Gray Green to Olive Brown", dates: "Jun 1 - Jul 15", emergence: "Sporadic", size: "10 - 12", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Caddis", name: "Green Sedge", color: "Olive to Gray Brown", dates: "Jul 15 - Sep 30", emergence: "Morning & Afternoon", size: "12 - 14", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Caddis", name: "Little Black Sedge", color: "Chocolate to Black", dates: "Jul 15 - Sep 30", emergence: "Sporadic", size: "16 - 18", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Caddis", name: "Little Plain Brown Sedge", color: "Brown to Chocolate", dates: "Jun 15 - Aug 30", emergence: "Sporadic", size: "14 - 16", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Caddis", name: "Little Sister Sedge", color: "Green to Greenish Brown", dates: "May 15 - Aug 30", emergence: "Afternoon & Evening", size: "14 - 16", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Caddis", name: "Little Tan Short Horn Sedge", color: "Dark Brown to Yellow", dates: "Mar 1 - Aug 30", emergence: "Sporadic", size: "14 - 16", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Caddis", name: "Little Wester Dark Sedge", color: "Dark Brown", dates: "Jun 1 - Aug 15", emergence: "Mid Day", size: "16 - 18", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Caddis", name: "Micro Caddis", color: "Yellow, Orange, or Brown", dates: "Jun 15 - Oct 15", emergence: "Sporadic", size: "20 - 22", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Caddis", name: "October Caddis", color: "Orange Tan to Grayish Black", dates: "Sep 1 - Oct 30", emergence: "Shallows, Afternoon & Evening", size: "8 - 10", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Caddis", name: "Spotted Sedge", color: "Brownish Yellow", dates: "May 15 - Sep 30", emergence: "Sporadic", size: "10 - 12", spinner_fall: "N/A", state_id: 6)

Hatch.create(bug_type: "Mayfly", name: "Blue Winged Olive", color: "Light Olive Brown to Brown Olive", dates: "Mar 1 - Nov 15", emergence: "Clouds & Warmest Part of Day", size: "16 - 18", spinner_fall: "Evening", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Brown Drake", color: "Dark Brown to Blackish", dates: "Jun 15 - Jul 15", emergence: "Evening", size: "10 - 12", spinner_fall: "Late Evening", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Callibaetis Speckled Dun", color: "Tannish Olive to Olive Gray", dates: "Jun 1 - Aug 30", emergence: "Cloudy, Late Morning", size: "14 - 16", spinner_fall: "Late Afternoon", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Early Pale Morning Dun (PMD)", color: "Olive Yellow to Yellowish Pink", dates: "Jun 1 - Sep 15", emergence: "Mid Morning to Early Afternoon", size: "16 - 22", spinner_fall: "Late Evening", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Ginger Quill", color: "Pale Cream to Whitish", dates: "Jul 1 - Sep 15", emergence: "Morning", size: "14 - 16", spinner_fall: "Evening", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Gray Drake", color: "Gray", dates: "Jun 1 - Nov 30", emergence: "Late Morning", size: "14 - 16", spinner_fall: "Evening", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Iron Blue Quill", color: "Light Olive Tan to Blue Gray", dates: "Jun 1 - Aug 15", emergence: "Warmest Part of Day", size: "20 - 22", spinner_fall: "Evening", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Late Pale Morning Dun (PMD)", color: "Creamish Olive to Yellowish", dates: "Jun 15 - Jul 15", emergence: "Early Morning", size: "16 - 18", spinner_fall: "After Afternoon", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Mahogany Dun", color: "Reddish Brown to Blackish Brown", dates: "Sep 1 - Oct 31", emergence: "Early Afternoon", size: "16 - 18", spinner_fall: "Late Evening", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Micro Blue Winged Olive (BWO)", color: "Pale Olive Green to Blue Gray", dates: "Jun 1 - Nov 30", emergence: "Clouds & Warmest Part of the Day", size: "22 - 26", spinner_fall: "Evening", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Pink Pale Morning Dun", color: "Pink to Orangish to Rusty Red", dates: "Aug 1 - Sep 15", emergence: "Daytime", size: "14 - 16", spinner_fall: "Early Morning", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Red Quill", color: "Reddish Brown", dates: "Jun 15 - Sep 30", emergence: "Mid Morning", size: "14 - 16", spinner_fall: "Evening", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Slate Winged Drake", color: "Brown to Slate Gray", dates: "Jun 15 - Aug 1", emergence: "Eary Afternoon", size: "16 - 12", spinner_fall: "Evening", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Trico", color: "Black", dates: "Jul 15 - Sep 15", emergence: "Morning", size: "22 - 26", spinner_fall: "Early Afternoon", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Western Black Quill", color: "Purplish Black to Grayish Brown", dates: "Apr 1 - Jun 30", emergence: "Mid Morning", size: "14 - 12", spinner_fall: "Evening", state_id: 6)
Hatch.create(bug_type: "Mayfly", name: "Western Green Drake", color: "Dark Olive", dates: "Jun 1 - Aug 1", emergence: "Cloudy, Between 1 - 4 PM", size: "8 - 12", spinner_fall: "Evening", state_id: 6)

Hatch.create(bug_type: "Midge", name: "Black Midge", color: "Blackish to Black", dates: "Apr 1 - Nov 15", emergence: "All Day", size: "18 - 20", spinner_fall: "2 - 3 Hours", state_id: 6)
Hatch.create(bug_type: "Midge", name: "Chocolate Brown Midge", color: "Brown to Chocolate", dates: "Feb 15 - Dec 15", emergence: "All Day", size: "20 - 22", spinner_fall: "2 - 3 Hours", state_id: 6)
Hatch.create(bug_type: "Midge", name: "Micro Black Midge", color: "Blackish to Black", dates: "Mar 1 - Nov 15", emergence: "Morning", size: "22 - 26", spinner_fall: "2 - 3 Hours", state_id: 6)
Hatch.create(bug_type: "Midge", name: "Snow Midge", color: "Gray to Charcoal", dates: "Jan 1 - Dec 31", emergence: "Warmest Part of Day", size: "24 - 28", spinner_fall: "2 - 3 Hours", state_id: 6)

Hatch.create(bug_type: "Stonefly", name: "Giant Golden", color: "Brownish Yellow", dates: "Jun 1 - Aug 1", emergence: "Follows Salmonflies", size: "14 - 18", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Stonefly", name: "Micro Black", color: "Dark Brown to Black", dates: "Jan 1 - May 15", emergence: "38 - 44° Water Temps Heat of Day", size: "18 - 22", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Stonefly", name: "Micro Yellow", color: "Greenish Yellow to Yellow", dates: "Jun 1 - Aug 30", emergence: "46 - 54° Water Temps Morning", size: "18 - 22", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Stonefly", name: "Salmon Fly", color: "Black to Reddish Brown", dates: "May 15 - Jul 15", emergence: "50 - 60° Water Late Morning on", size: "4 - 8", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Stonefly", name: "September Stone", color: "Reddish Brown with Orange Belly", dates: "Aug 15 - Oct 31", emergence: "Early Afternoon to Evening", size: "4 - 10", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Stonefly", name: "Skwala Stone", color: "Dark Brown to Yellow Olive", dates: "Mar 1 - May 15", emergence: "38 - 47° Water Temps, Late afternoon and evening. Riffles and bankwater near foliage.", size: "6 - 12", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Stonefly", name: "Small Western", color: "Brownish", dates: "May 15 - Jul 15", emergence: "46 - 56° Water Temps", size: "14 - 18", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Stonefly", name: "Winter Black", color: "Black Brown to Reddish Olive, Mottled Brown", dates: "Apr 1 - Aug 15", emergence: "Cold Mountain Streams and Small Ponds", size: "18 - 22", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Stonefly", name: "Yellow Sally", color: "Pale Yellow to Pinkish Yellow", dates: "Jun 15 - Aug 30", emergence: "Morning to Early Afternoon", size: "2 - 8", spinner_fall: "N/A", state_id: 6)

Hatch.create(bug_type: "Terrestrial", name: "Beetle", color: "Brownish to Black", dates: "May 1 - Nov 30", emergence: "All Day", size: "10 - 18", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Terrestrial", name: "Black & Red Ant", color: "Red & Black", dates: "Jul 1 - Sep 30", emergence: "All Day", size: "18 - 20", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Terrestrial", name: "Black Ant", color: "Black", dates: "May 1 - Nov 15", emergence: "All Day", size: "20 - 24", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Terrestrial", name: "Cricket", color: "Brownish Olive to Black", dates: "Jun 1 - Nov 30", emergence: "Twilight & Dusk", size: "8 - 16", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Terrestrial", name: "Dog Day Cicadas", color: "Black & Orange", dates: "Jul 1 - Aug 31", emergence: "Varied", size: " ", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Terrestrial", name: "Flying Black Ant", color: "Black", dates: "Aug 15 - Sep 15", emergence: "Mid Afternoon", size: "14 - 18", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Terrestrial", name: "Grasshopper", color: "Green to Brownish Tan", dates: "May 15 - Nov 15", emergence: "All Day", size: "2 - 14", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Terrestrial", name: "Red Ant", color: "Red to Orangish", dates: "May 1 - Oct 15", emergence: "All Day", size: "18 - 22", spinner_fall: "N/A", state_id: 6)

Hatch.create(bug_type: "Worm", name: "San Juan Worm", color: "Red, Pink, Brown, Purple", dates: "Jan 1 - Dec 31", emergence: "N/A", size: "14 - 18", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Leech or Minnow", name: "Wooly Bugger", color: "Black, Olive, Brown", dates: "Jan 1 - Dec 31", emergence: "N/A", size: "8 - 16", spinner_fall: "N/A", state_id: 6)
Hatch.create(bug_type: "Egg", name: "Eggs", color: "Red, Pink, Orange, Yellow", dates: "Jan 1 - Dec 31", emergence: "N/A", size: "16 - 20", spinner_fall: "N/A", state_id: 6)



# <---- Flies ---->
Fly.create(
  name: "Parachute Adams",
  description: "Good all-around adult mayfly pattern",
  hatch_id: 13
  )
Fly.create(
  name: "Pheasant Tail",
  description: "Can serve as a Baetis Nymph or Mayfly Nymph pattern.
    Flashback patterns are popular, especially in the riffles,
    along with a bead head pattern to get the fly down in the water more quickly.",
  hatch_id: 15
  )
Fly.create(
  name: "Blue Wing Olive",
  description: "Classic adult Baetis or Mayfly pattern.
    It is simple yet elegant. It can be fished year round; just watch
    for a hatch coming off the water.",
  hatch_id: 12
  )
Fly.create(
  name: "Mercury Midge",
  description: "A great Colorado fly. Created by Pat Dorsey for the Platte River.
  It can be used in a variety of colors, but all have the silver-lined bead head.
  The Mercury Midge imitates a midge pupa just before emerging as an adult and is
  normally fished beneath the surface.",
  hatch_id: 28
  )
Fly.create(
  name: "The Black Beauty",
  description: "Another fly created by Pat Dorsey. It is an earlier stage pupa
  imitation and is normally fished deeper. Most efficient in smaller sizes: 18 - 22.",
  hatch_id: 30
  )
Fly.create(
  name: "San Juan Worm",
  description: "Works in a variety of colors, but red and hot pink seem to work the best.
  Fish it as a dropper off a big dry fly, or under an attractor nymph.",
  hatch_id: 49
  )
Fly.create(
  name: "Elk Hair Caddis",
  description: "Dry fly. Serves as an adult Caddisfly, and is fished in various forms.",
  hatch_id: 7
  )
Fly.create(
  name: "Amy's Ant",
  description: "Great multi-purpose foam ant.",
  hatch_id: 43
  )
Fly.create(
  name: "Sparkle Wing RS2",
  description: "Simulates a wide range of emerging mayfly nymphs, but mostly a Baetis.
  It works great as a midge pupa during the winter months.",
  hatch_id: 17
  )
Fly.create(
  name: "Wooly Bugger",
  description: "Imitates either a minnow or a leech.",
  hatch_id: 50
  )
Fly.create(
  name: "Copper John",
  description: "Great multi-purpose nymph. Can imitate Stoneflies or Baetis", 
  hatch_id: 36
  )
Fly.create(
  name: "Prince Nymph",
  description: "Can fill several roles depending on the size and how it is fished.
  Can imitate a stonefly or caddis nymph.",
  hatch_id: 39
  )
Fly.create(
  name: "Stimulator",
  description: "An orange or yellow stimulator is highly regarded to serve as a
  stone fly, a big caddis, or even a hopper.",
  hatch_id: 32
  )
Fly.create(
  name: "Egg",
  description: "Because fish are spawning pretty much year round in Colorado,
  an egg pattern is great to have in a flybox.",
  hatch_id: 51
  )
