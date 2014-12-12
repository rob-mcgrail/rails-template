require 'spec_helper'

describe "Home routes" do
  it "routes / to home#index" do
    expect(:get => "/").to route_to(
      :controller => "home",
      :action => "index"
    )
  end
end
