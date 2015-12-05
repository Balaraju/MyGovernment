class UsersController < ApplicationController

	def sign_in
		user = User.find_by_email(params[:email])
    if user.present? and user.valid_password?(params[:password])
    	new_token = Digest::MD5.hexdigest(Time.now.to_s + user.email)
    	user.device_authentications.create :authentication_token => new_token
    	render :json=> { :success=>true, :auth_token => new_token, :user => user }
    else
      render json: { errors: ['Invalid username or password'] }, status: :unauthorized
    end
	end

	def sign_out
    device = DeviceAuthentication.where(:authentication_token => params[:authentication_token]).first
    if device.present?
	    device.destroy if device.present?
	    render :json => { :success => true, :message => "Session successfully closed."}
	  else
	  	render :json => { :success => false, :message => "wrong authentication token"}
	  end  
  end

end
