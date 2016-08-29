8/29/16
  - when creating new account, fix sessions so that it knows you're logged in and will show appropriate info:
    - edit profile, create new post, see all posts, log out, etc

  - created new models - rivers and stations
    - river will have multiple stations, and stations will belong to one river
    - with these in play, now a user can go on the site, choose a river, find a station, and see data

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
