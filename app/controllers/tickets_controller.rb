class TicketsController < ApplicationController
  def new
  end

  def create
    ticket = current_user.tickets.buil do |t|
      t.event_id = params[:event_id]
    end
  end
end
