class ShowsupsController < ApplicationController
  def create
    @date = params[:date]
    user = params[:user]
    if Showsup.where(user_id: user).where(starts_at: @date).empty?
      Showsup.create(starts_at: @date, user_id: user)
    end
    redirect_to :back
  end

  def destroy
    Showsup.find(params[:id]).destroy
    redirect_to :back
  end
end
