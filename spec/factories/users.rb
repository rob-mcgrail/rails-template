# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  # Define a basic devise user.
  pass = Faker::Internet.password

  factory :user do
    email { Faker::Internet.email }
    name { Faker::Internet.user_name }
    password pass
    password_confirmation pass
  end
end


# Example from inside a spec...
# describe "Contact ingest" do
#   before(:each) do
#     @contact ||= FactoryGirl.create :contact

#     params = {
#       contact_name: 'SomeName',
#       phone_number: @contact.phone_number
#     }

#     d ||= FactoryGirl.create :device
#     @call = d.phone_calls.create
#     @call.ingest_contact(params, d)
#   end
#   ...

