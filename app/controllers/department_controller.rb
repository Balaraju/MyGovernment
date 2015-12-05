class DepartmentController < ApplicationController

	#respond_to :json
include ActionController::MimeResponds
	def create_category
		department = Department.new(name: params[:name])
		if department.save
			render :json=> { :success => true, :department => department }
		else
			render :json=> { :success => false, :message => department.errors.full_messages }
		end
	end

	def update_category
		department = Department.find(params[:id])
		department.update name: params[:name]
		render :json=> { :success => true, :department => department }
	end

	def total_departments
		@departments = Department.all
		respond_to do |format|
    	format.html
    	#format.csv { send_data @products.to_csv }
    	format.xls # { send_data @products.to_csv(col_sep: "\t") }
  	end
	end

	def total_services
		@services = Service.all
		respond_to do |format|
			format.html
			format.xls
		end
	end

	def place_data
		@places = Place.all
		respond_to do |format|
			format.html
			format.xls
		end
	end

end
