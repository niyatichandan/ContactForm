require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test 'new contact email' do

    # Set up an email using the user details
    email = UserMailer.with(email: 'info@ajackus.com', contact_info: { locale: 'en', first_name: 'Mary',
                                                                       last_name: 'James', phone_number: '+16023456897',
                                                                       email: 'maryjames@example.com' }).support_email.deliver_now
    # Check the contents are correct
    assert_equal 'Support email', email.subject
    assert_equal ['from@example.com'], email.from
    assert_equal ['info@ajackus.com'], email.to
    assert_equal read_fixture("new_contact_email").join.gsub("\n", ' ').squeeze(' '), ActionView::Base.full_sanitizer.sanitize(email.body.to_s).gsub("\n", ' ').squeeze(' ')
  end
end
