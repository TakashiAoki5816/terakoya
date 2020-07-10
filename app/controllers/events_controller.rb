class EventsController < ApplicationController
  def index
  end

  def new
    @event = Event.new
  end

  def create
    Event.create(event_params)
  end

  private
  def event_params
    params.require(:event).permit(:title, :datetime, :image, :content, :tag)
  end
end
