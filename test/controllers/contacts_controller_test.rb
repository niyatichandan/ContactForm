
require 'test_helper'
SimpleCov.command_name "test:functionals"
class ContactsControllerTest < ActionDispatch::IntegrationTest
  fixtures :contacts

  # Test Get/List method for contacts API
  test 'should get new' do
    get contacts_new_url
    assert_response :success
  end

  # Test Show/Get one method for contacts API
  test 'should show new' do
    get contacts_new_url
    assert_response :success
  end

  # Test Post/Create method for contacts API
  test_contacts = YAML.load_file("#{Rails.root.to_s}/config/contacts_test.yml")
  test 'should create new' do
    assert_difference('Contact.count') do
      post contacts_url, params: { first_name: test_contacts[0]["first_name"],
                                    last_name: test_contacts[0]["last_name"],
                                    email: test_contacts[0]["email"],
                                    phone_number: test_contacts[0]["phone_number"],
                                    message: test_contacts[0]["message"],
                                    locale: test_contacts[0]["locale"] }
    end
    assert_redirected_to root_path
    assert_equal 'Contact was successfully created', flash[:notice]
  end
end
