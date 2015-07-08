class ShowsupsController < ApplicationController
  def create
    Showsup.create(starts_at: params[:date], user_id: params[:user])
    redirect_to :back
  end
end
