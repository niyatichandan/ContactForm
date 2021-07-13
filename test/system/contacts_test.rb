require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  fixtures :contacts

  setup do
    @contact = contacts(:contact_one)
  end

  test "creating a Contact" do
    visit contacts_url

    fill_in "first-name", with: @contact.first_name
    fill_in "last_name", with: @contact.last_name
    fill_in "email", with: @contact.email
    fill_in "message", with: @contact.message
  
    click_on "Send Message"
  end
end
