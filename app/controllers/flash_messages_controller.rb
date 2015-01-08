class FlashMessagesController < ApplicationController
  def view
    render 'shared/_flash_messages', :layout => false
  end
end
