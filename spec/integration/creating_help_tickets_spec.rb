require 'spec_helper'

feature "create a ticket" do
  before do
    visit '/'
    click_link "New Ticket"
  end

  scenario "creating a new ticket" do
    fill_in "Issue", :with => "need to spam your email"
    fill_in "Description", :with => "i just really really want to"
    click_button "Create Ticket"
    page.should have_content("Ticket created.")
  end
end

