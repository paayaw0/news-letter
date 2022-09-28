# Preview all emails at http://localhost:3000/rails/mailers/welcome_subscriber_mailer
class WelcomeSubscriberMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/welcome_subscriber_mailer/welcome
  def welcome
    WelcomeSubscriberMailer.welcome
  end

end
