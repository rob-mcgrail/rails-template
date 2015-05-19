require 'spec_helper'

describe HomeController do
  it "responds successfully with an HTTP 200 status code" do
    get :index
    expect(response).to be_success
    expect(response.status).to eq(200)
  end

  it "can be seen by users" do
    sign_in
    get :index
  end

  it "renders the index template" do
    get :index
    expect(response).to render_template("index")
  end
end
