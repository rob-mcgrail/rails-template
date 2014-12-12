Getting a dev version running:

`$ gem install bundler foreman rake`

`$ bundle`

`$ cp env .env`

Edit the .env file as required for your environment. Database details are only required if you're using the production environment.

`$ rake db:migrate`

`$ rspec`

Hopefully everything is green.

Don't start the app with `$ rails s`, it has a clock and worker thread. Start it via:

`$ foreman start`

Also:

`$ bundle exec rake assets:precompile`

`$ bundle exec rake tmp:cache:clear`

`$ foreman export --app appname --user root upstart /etc/init`
