class ParticipationsController < ApplicationController
before_action :set_event

  def new
    @participation = Participation.new
  end

  def create
    @participation = @event.participations.new(participation_params)
  end

  private
  def participation_params
    params.require(:participation).merge(user_id: current_user.id, event_id: params[:event_id])
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
