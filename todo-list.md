8/29/16


  - created new models - rivers and stations
    - river will have multiple stations, and stations will belong to one river
    - with these in play, now a user can go on the site, choose a river, find a station, and see data

How do you create a table?!?
I have rivers and stations.
Ideally it'll look like:

          River       |   Station Name              |   Gage Height |   discharge cubic ft/s
Upper South Platte    |                             |               |
                      | Above Cheesman Lake         |   5.51        |   227
                      |   Deckers                   |   3.82        |   331
Roaring FORK          |                             |               |
                      | Frying Pan                  |   2.11        |   294


<% rivers.each do |river| %>
<tr>
  <td>
  </td>
  <td>
  </td>
 </tr>
<% end %>




Etc. River names, then their stations below with the river data at that station.

Ok so how do I do this?
First, iterate through the Rivers, and put them in a table data under the River table header.
Then, iterate through the stations, match the station river_id with the river id and store those in the <td>'s for rest of the <th>






  - in create post, have a section / dropdown that will allow user to select which station/river they fished at




That's it as far as the rails side.
Next, use the API alongside React.
  - with React:
    - network requests? friend requests?
    - weather API
    - BUG HATCHES!!
      - popular hatches by season
      - popular flies: colors, size, etc
      - popular hatches by weather
      OR OR OR, WRITE YOUR OWN ALGORITHM FOR SUGGESTED FLIES BASED ON CURRENT RIVER CONDITIONS, WEATHER CONDITIONS, AND SEASON.
        - how would I start doing this.
           - so experience based. or maybe scrape data from river reports from different fly shops?
            - most popular fly shops by river - scrape their river reports?
              - so iffy because sometimes they don't update this often.
