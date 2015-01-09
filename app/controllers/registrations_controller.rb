class RegistrationsController < Devise::RegistrationsController
  # http://blog.andrewray.me/how-to-set-up-devise-ajax-authentication-with-rails-4-0/
  #clear_respond_to # Used to prevent regular devise pages appearing.

  respond_to :json
end
