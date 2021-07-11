class ContactsController < ApplicationController
  protect_from_forgery

	def new
    I18n.locale = params[:locale]
    @contact = Contact.new
  end

  # Creates new contact
  def create
    @contact = Contact.new(contact_params.merge(locale: I18n.locale))
    respond_to do |format|
      if @contact.save
        format.html { redirect_to root_path, notice: I18n.t('contact.created') }
      else
        format.html { render 'contacts/new' }
      end
    end
  end

  private

  # Permitted attributes
  def contact_params
    params.permit('first_name', 'last_name', 'email', 'phone_number', 'message', 'locale')
  end
end