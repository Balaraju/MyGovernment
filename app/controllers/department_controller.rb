class DepartmentController < ApplicationController

	def create_department
		department = Department.new(name: params[:name])
		if department.save
			render :json=> { :success => true, :department => department }
		else
			render :json=> { :success => false, :message => department.errors.full_messages }
		end
	end

	def update_department
		department = Department.find(params[:id])
		department.update name: params[:name]
		render :json=> { :success => true, :department => department }
	end


	def department_list
		departments = Department.all
		render :json=> { :success => true, :department => departments }
	end

end
