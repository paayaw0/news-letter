class SubscriptionsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:confirm]

  def signups
    @subscriber = Subscriber.new 
  end

  def create 
    @subscriber = Subscriber.new(signups_params)
    @subscriber.ip_address = request.remote_ip
  
    if @subscriber.save 
      ConfirmSubscriptionMailer.with(subscriber: @subscriber).confirm.deliver_now
      redirect_to root_path, notice: 'successful'
    else 
      render :signups, alert: 'something went wrong'
    end    
  end


  def confirm 
    @subscriber = Subscriber.find(params[:id])
    @subscriber.update(confirmed: true)
    WelcomeJob.set(wait: 24.hours).perform_later(@subscriber.id)

    redirect_to root_path, notice: 'confirmed'
  end


  private 

  def signups_params 
    params.require(:subscriber).permit(:name, :email)
  end
end
