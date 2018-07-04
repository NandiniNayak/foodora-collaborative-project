# Preview all emails at http://localhost:3000/rails/mailers/model_mailer
class ModelMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/model_mailer/new_receipt_notification
  def new_receipt_notification(email)
    @email = email
    mail to: @email, subject: "Your order from Foodora"
    ModelMailer.new_receipt_notification(@email)
  end
end
