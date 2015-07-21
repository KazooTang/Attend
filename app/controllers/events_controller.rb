class EventsController < ApplicationController
  before_action :find_event, only:[:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      @message = 'Success!'
      render 'notify.js'
      redirect_to root_path
    else
      @message = 'QQ'
      @style = 'warning'
#      render 'application/notify'
      render :new
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      @message = 'Success!'
      redirect_to events_path
    else
      @message = 'QQ'
      @style = 'warning'
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to :back
  end

  private
  def find_event
    @event = Event.find(params[:id])
    redirect_to events_path unless @event
  end

  def event_params
    params.require(:event).permit(:name, :description)
  end
end
