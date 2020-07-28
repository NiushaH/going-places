Planning a Hitchhiker Rideshare App
 
GET /signup
  present a signup form with email address being the authentication attribute 
POST /users
  create the user in database
  * validate
  * authenticate 
 
GET /login
  present login form

POST /login
  create their session and redirect to user#show page
  * tell them who they're logged in as

GET /logout
  log user out and end session  

<!-- GET /user/:id
  create a profile
  * give option to add a trip or a drive -->

<!-- GET /trips/new
 
POST /trips
 
GET /trips
 show list of all trips
 
GET /drives
 
POST /drives
 
GET /drives
 show list of all drives -->
 
 
GET /rides/new 
  show a form to request a ride
  enter the departure location and date, and destination

POST /rides
  take the ride request (trip) and save it to the db

GET /rides
 show details of rides needed

GET /rides/:id
 Show details of the ride request
 ACCEPT ride
 <!-- post ratings and comments -->
 

PATCH /rides/:id
 


STRETCH GOALS
  # user-friendliness feature -- add list of possible drivers and hitchhiker can select one


