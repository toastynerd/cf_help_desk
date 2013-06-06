class TicketsController < ApplicationController
  before_filter :find_ticket, :only => [:show, :edit, :update, :destroy]
  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(params[:ticket])
    if @ticket.save
      TicketMailer.new_ticket(@ticket).deliver
      flash[:notice]="Ticket created."
      redirect_to @ticket
    else
      flash[:alert]="Could not create ticket."
      render :action => "new"
    end
  end

  def show
    #
  end

private
  def find_ticket
    @ticket = Ticket.find(params[:id])
  end
end
