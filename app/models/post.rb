class Post < ApplicationRecord
  belongs_to :user

end

###
# Fishing reports should have:
# Trips:
#   Rating: 1-5
#   date:
#   highlights: text
#
#
# Fish:
#   Species:
#   Weight:
#   Length:
#
# Weather:
#   Temp:
#   Sky:
#   Wind:
#   Percipitation:
#
# Water:
#   Temp:
#   Flow:
#   Clarity:
#   Runoff:
#
# Flies & Hatches:
#   Reported hatches:
#   Times:
#   Flies used:
#     name:
#     color:
#     size:
#     time:
