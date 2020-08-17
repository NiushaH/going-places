Planning a Hitchhiker Rideshare App

  * A hitchhiker can sign up and add a trip for which they need a/many rides.
  * Drivers can get notified of hitchhikers needing a trip in their area and offer full or partial ride.  If partial ride is offered, the hitchhiker can request a new ride from ride dropoff location to final destination.
  * STRETCH GOAL: Pickup another hitchhiker along driver's route.


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
 show list of all trips -->
 
 
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


