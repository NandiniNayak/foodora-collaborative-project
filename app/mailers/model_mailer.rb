class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_receipt_notification.subject
  #
  def new_receipt_notification(email)
    @email = email
    mail to: @email, subject: "Test"
  end

  def create
    ModelMailer.new_receipt_notification(@email).deliver_now
  end

end
