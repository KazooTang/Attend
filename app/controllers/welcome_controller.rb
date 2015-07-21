class WelcomeController < ApplicationController
  def index
    @showsups = Showsup.all
    @user = User.all
    @events = Event.all
  end 

  def day
    @events = Event.all
  end
end
