#README

##Rails and Angular practice

This is a sample app combining Rails and Angular. I followed this tutorial:
http://www.angularonrails.com/ruby-on-rails-angularjs-single-page-application

The app is simple. It displays an index template for a group resource. The reason
I chose to follow this tutorial is that it doesn't use the asset pipeline but rather
demonstrates how to use proxy server locally so the Rails api communicates with Angular
front end.

To run locally just cd into front-end and enter ``bundle exec grunt serve``.  The grunt
server is configured to also run a rails server concurrently.

Next I will learn how to deploy this setup to Heroku.
