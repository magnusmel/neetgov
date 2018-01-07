class EcetsubscribeController < ApplicationController
  def apindex
  	@apecet = Subscribe.new
  end

  def tsindex
  	@apecet = Subscribe.new
  end

  def subscribe
  	@apecet = Subscribe.new(subscribe_params)
  	if @apecet.valid?
  		@apecet.save!
  		redirect_to "/#{subscribe_params['state']}-#{subscribe_params['state']}sbtet-results", :notice => "Thank you for subscribe, We will notify."
  	else
  		redirect_to "/#{subscribe_params['state']}-#{subscribe_params['state']}sbtet-results", :Alert => "Somthing went wrong, please try again"
  	end
  end

  private
  def subscribe_params
  	params.require(:subscribe).permit(:cet,:email,:hallticket,:state,:year)
  end
end
