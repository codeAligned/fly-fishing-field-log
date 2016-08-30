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


User.create(name: "Gina", age: 27, password: "enzo", state_id: State.find_by(name: "Colorado").id)
User.create(name: "Sharon", age: 23, password: "fitz", state_id: State.find_by(name: "Wyoming").id)
User.create(name: "Hannah", age: 29, password: "lyla", state_id: State.find_by(name: "Georgia").id)

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
