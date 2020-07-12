class EventsController < ApplicationController
  def index
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to root_path(current_user), notice: '勉強会が作成されました'
    else
      flash.now[:alert] = '必須項目を入力してください。'
      render :new
    end
  end

  private
  def event_params
    params.require(:event).permit(:title, :datetime, :image, :content, :tag)
  end
end
