class HomeController < ApplicationController
  def index
    # Passing a random object to the view.
    flash[:alert] = "Hi there!"
    @object = OpenStruct.new
  end
end
