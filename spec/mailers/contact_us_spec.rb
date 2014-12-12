require 'spec_helper'

# describe ContactUsMailer do
#   let(:name) { 'Rob' }
#   let(:email) { 'test@hauntdigital.co.nz' }
#   let(:message) { 'I am making contact' }
#   let(:mail) { ContactUsMailer.contact_us_message(name, email, message) }

#   it "sends to the configured contact us address" do
#     mail.to.should == [Rails.configuration.contact_us_email_address]
#   end

#   it "includes the message in the body" do
#     mail.body.encoded.should match(message)
#   end

#   it "includes the sender address in the body" do
#     mail.body.encoded.should match(email)
#   end

#   it "includes the sender name in the body" do
#     mail.body.encoded.should match(name)
#   end

#   it "includes the generic subject" do
#     mail.subject.should match('Contact Us Notification')
#   end
# end
