class HomeController < ApplicationController
  def index
    # Passing a random object to the view.
    @object = OpenStruct.new
  end
end
