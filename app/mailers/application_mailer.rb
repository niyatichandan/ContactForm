class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def set_locale(locale)
    I18n.locale = locale
  end
end
