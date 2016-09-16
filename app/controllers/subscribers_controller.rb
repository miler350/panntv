class SubscribersController < ApplicationController

def create
  respond_to do |format|
    format.html { redirect_to root_path }
    format.js {
      @subscriber = Subscriber.new(subscriber_params)
      @subscriber.save
    }
  end
end

private
  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
