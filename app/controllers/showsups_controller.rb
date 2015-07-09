class ShowsupsController < ApplicationController
  def create
    @date = params[:date]
    @user = params[:user]
    if Showsup.where(starts_at: @date).where(user_id: @user).empty?
      Showsup.create(starts_at: @date, user_id: @user)
    end
    @showsup = Showsup.where(starts_at: @date)
  end

  def destroy
    Showsup.find(params[:id]).destroy
    @date = params[:date]
    @showsup = Showsup.where(starts_at: @date)
    render 'create'
  end
end
