# README

This is a revisit of my original POC for the YourNeighbour team. The project 
was initially created for users to be able to search for Churches that have signed up
near to them, to find places willing to offer food.

Currently, there are hardcoded values in the seeds.rb file. There is also a form 
on the root page to be able to create new entries.

At the moment, opening the show will show on a map where the location is. 
Next, I will implement a search form which will utilize the Geocoder gem
to be able to find the most nearby churches to a user based on their inputs.

To run the app:
Create a `.env` file at the root of your project, and add a google maps API key, with embed api enabled
Run a `bundle install`
Run `rails db:migrate`
Run `rails db:seed`
Run `rails s` to start the application
Visit `localhost:3000`