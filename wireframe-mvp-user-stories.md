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
 
 
POST /logout


GET /user/:id
  create a profile
  * give option to add a trip or a drive

GET /trips/new
 
POST /trips
 
GET /trips
 show list of all trips
 
GET /drives
 
POST /drives
 
GET /drives
 show list of all drives
 
 
GET /rides (matches trips and drives)
 
 
GET /rides/:id
 show details of ride match
 ACCEPT ride
 post ratings and comments
 
PATCH /rides/:id
 
