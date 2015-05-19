module DeviseHelper
  # Define a method which signs in as a valid user.
  def sign_in(user = nil)
    # Ask factory girl to generate a valid user for us.
    user ||= FactoryGirl.create :user
    login_as(user, :scope => :user)
  end
end


RSpec.configure do |config|
  config.include Warden::Test::Helpers
  config.before :suite do
    Warden.test_mode!
  end
  # Include the help for the request specs.
  config.include DeviseHelper
end
