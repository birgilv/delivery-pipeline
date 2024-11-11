class HomeController < ApplicationController
    def index
      render plain: "Welcome to MyApp"
    end
  end