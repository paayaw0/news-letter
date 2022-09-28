# Preview all emails at http://localhost:3000/rails/mailers/confirm_subscription_mailer
class ConfirmSubscriptionMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/confirm_subscription_mailer/confirm
  def confirm
    ConfirmSubscriptionMailer.confirm
  end

end
