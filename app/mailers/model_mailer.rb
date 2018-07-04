class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_receipt_notification.subject
  #
  def new_receipt_notification
    mail to: "2018.gentech@gmail.com", subject: "Test"
  end

  def create
    ModelMailer.new_receipt_notification.deliver_now
  end

end
