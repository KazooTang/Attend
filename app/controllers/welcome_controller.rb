class WelcomeController < ApplicationController
  def index
    @showsups = Showsup.all
  end 
end
