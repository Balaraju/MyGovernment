class DepartmentController < ApplicationController

	respond_to :json

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

end
