class WelcomeController < ApplicationController
  def index
    @showsup = Showsup.all
  end 
end
