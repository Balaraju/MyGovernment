class ServiceCategoriesController < ApplicationController


	def show
		service = ServiceCategory.find(params[:id])
		render :json=> { :success => true, :service => service }
	end
end
