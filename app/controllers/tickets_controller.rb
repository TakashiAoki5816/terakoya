class TicketsController < ApplicationController
  def new
  end

  def create
    ticket = current_user.tickets.build do |t|
      t.event_id = params[:event_id]
    end
  end
end
