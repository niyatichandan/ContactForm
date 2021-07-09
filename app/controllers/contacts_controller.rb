class ContactsController < ApplicationController
	def new
    I18n.locale = params[:locale]
    @contact = Contact.new
  end
end