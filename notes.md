1. MVC it up
2. create associations in models
3. CRUD it up in controllers
4. make those forms in views
  - new, index, show, edit (usually)
    - new <- holds the form
    - index <- ALL users
    - show <- ONE user
    - edit <- self explanatory

  Users Form
    - form_for



-----------------
Things to remember:
  - validations happen in models
  - set authentication up in models (has_secure_password)
  - sessions controller if you're logging in
  - check your routes

How to fix bugs better:
  - Break down the error step by step
  - Try to recreate the problem
  - Think about the next place you want to go - where you want it to go

Fly Fishing project
1. User can sign in/sign up to create account
2. Can check the current reports based on river selected
  - start small in CO - but eventually have this for all rivers in US. THEN THE WORLD. maybe.
    - maybe look into api's on river flow
    - maybe scrape other reports? kind of sketchy so..maybe not.
3. Can write a post/keep a log of a day they had on the river
  - This will keep track of:
    - date
    - weather
    - hatches
    - fish caught - and their size
      - can only see it on their page if logged in - because fly fishers are
        snobs and like to keep their spots secret.
      - being real ambitious here - but maybe set up like a friend thingy where
        if they friend someone, they can see their posts/logs too.
          - or maybe like a request to see posts? idk.
