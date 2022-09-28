class WelcomeSubscriberMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome_subscriber_mailer.welcome.subject
  #
  def welcome
    @subscriber = params[:subscriber]
    mail(to: @subscriber.email, subject: "Welcome #{@subscriber}")
  end
end
