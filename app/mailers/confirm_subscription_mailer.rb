class ConfirmSubscriptionMailer < ApplicationMailer
  include Rails.application.routes.url_helpers

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confirm_subscription_mailer.confirm.subject
  #
  def confirm
    @subscriber = params[:subscriber]
    mail(to: @subscriber.email, subject: 'Confirm Subscription')
  end
end
