class ServicesController < ApplicationController

	def show
		@service = Service.find(params[:id])
		if params[:category_id].present?
			@categories = @service.service_categories.where(category_id: params[:category_id])
		else
			@categories = @service.service_categories
		end 
		@service_level = @service.department.category.name || "STATE" 
		if @service.department.present? 
			if @service.department.category.present?
				@service_level = @service.department.category.name
			else
				"STATE"
			end
		else
			"STATE"
		end
		#render :json=> { :success => true, :service => service, :service_level => service_level, :categories => categories }
	end

	def services_list
		services = Service.all
		render :json=> { :success => true, :services => services }
	end



	

end
