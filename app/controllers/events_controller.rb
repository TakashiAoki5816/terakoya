class EventsController < ApplicationController
before_action :set_event, only: [:show, :edit]

  def index
    @events = Event.all.order(datetime: "ASC").page(params[:page]).per(7)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path, notice: '勉強会が作成されました'
    else
      flash.now[:alert] = '必須項目を入力してください。'
      render :new
    end
  end

  def show
  end

  def search
    @events = Event.search(params[:keyword])
  end

  def edit
  end

  def update
    event = Event.find(params[:id])
    if event.update(event_params)
      redirect_to root_path, notice: '勉強会を編集しました'
    else
      render :edit
    end
  end

  def destroy
    event = Event.find(params[:id])
    if event.destroy
      redirect_to root_path, notice: '勉強会を削除しました'
    else
      render :edit
    end
  end

  private
  def event_params
    params.require(:event).permit(:name, :title, :datetime, :image, :content, :tag, user_ids: []).merge(user_id: current_user.id)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
