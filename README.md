#README

##Rails and Angular practice

This is a sample app combining Rails and Angular. I followed this tutorial:
http://www.angularonrails.com/ruby-on-rails-angularjs-single-page-application

The app is simple. It displays an index template for a group resource. The reason
I chose to follow this tutorial is that it doesn't use the asset pipeline but rather
demonstrates how to use proxy server locally so the Rails api communicates with Angular
front end.

To get up running locally simply run the rails sever and then cd into the front-end folder and run
``bundle exec grunt serve`` for the front end server.
