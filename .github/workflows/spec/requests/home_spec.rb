require 'rails_helper'

RSpec.describe "Home Page", type: :request do
  describe "GET /" do
    it "returns a successful response with 'Welcome to MyApp'" do
      get "/"
      expect(response).to have_http_status(200)
      expect(response.body).to include("Welcome to MyApp")
    end
  end

  describe "GET /non_existent_path" do
    it "returns a 404 response" do
      get "/non_existent_path"
      expect(response).to have_http_status(404)
      expect(response.body).to include("does not exist")
    end
  end
end
