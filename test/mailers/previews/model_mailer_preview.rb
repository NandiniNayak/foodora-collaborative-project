# Preview all emails at http://localhost:3000/rails/mailers/model_mailer
class ModelMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/model_mailer/new_receipt_notification
  def new_receipt_notification
    ModelMailer.new_receipt_notification
  end

end
