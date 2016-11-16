Models and Associations


Purpose of the app:

User logs in and creates river reports (posts) about their day on the river.
The following data will all have to be saved to the database.

Fishing reports should have:
Trips:
  Name:
  Rating: 1-5
  Date:
  Highlights:

Fish:
  Species:
  Weight:
  Length:

Weather:
  Temp:
  Sky:
  Wind:
  Percipitation:

Water:
  Temp:
  Flow:
  Clarity:

Flies & Hatches:
  Reported hatches:
  Times:
  Flies used:
    Name:
    Color:
    Size:
    Time:


Models:

User
Post
Fish
Fly
Hatch
River
State
Station
Trip
Water
Weather

Associations:

Station belongs to River
River has many Stations

State belongs to User
State belongs to River

Fly belongs to Hatch

Post has many Fish
Post has many Hatches
Post has many Flies through Hatches
Post has many Trips
Post has many Waters
Post has many Weathers

Fish, Trip, Water, Weather belong to Post
Hatches belong to River & Post (confused about this)

User has many Posts
User has one State



11/13
Now that associations are set, how do I get it to show up on reports without
just their id showing?
How to direct the data and persist it all under reports under their user_id ultimately
