require 'test_helper'
SimpleCov.command_name 'test:units'

class ContactTest < ActiveSupport::TestCase
  fixtures :contacts

  def test_contact
    test_contacts = YAML.load_file("#{Rails.root.to_s}/config/contacts_test.yml")
    test_contacts.each do |contact|
      contact_one = Contact.new first_name: contact["first_name"],
                                last_name: contact["last_name"],
                                email: contact["email"],
                                phone_number: contact["phone_number"],
                                message: contact["message"],
                                locale: contact["locale"]
      # creation testing
      assert contact_one.save

      # Contact find testing
      contact_one_copy = Contact.find(contact_one.id)

      # Testing the ability to create and read a database record
      assert_equal contact_one.email, contact_one_copy.email

      # Testing update by assigning a new email
      contact_one.email = 'james@test.com'
      assert contact_one.save

      # Testing the ability to delete a record
      assert contact_one.destroy
    end
  end
end