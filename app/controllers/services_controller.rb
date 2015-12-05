class ServicesController < ApplicationController

	def show
		service = Service.find(params[:id])
		categories = service.service_categories 
		render :json=> { :success => true, :service => service, :categories => categories }
	end

	def services_list
		services = Service.all
		render :json=> { :success => true, :services => services }
	end

	

end
