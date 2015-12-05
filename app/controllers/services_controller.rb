class ServicesController < ApplicationController



	def service_details
		service = Service.find(params[:id])
		
	end


end
