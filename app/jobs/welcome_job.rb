class WelcomeJob < ApplicationJob
  queue_as :default

  def perform(subscriber_id)
    @subscriber = Subscriber.find(subscriber_id)

    WelcomeSubscriberMailer.with(subscriber: @subscriber).welcome.deliver_now
  end
end
