class TicketMailer < ActionMailer::Base
  default from: 'new@helpdesk.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ticket_mailer.new_ticket.subject
  #
  def new_ticket(ticket)
    @ticket = ticket
    mail to: ENV["EMAIL_ADMIN"], subject: "New Help Ticket."
  end
end
