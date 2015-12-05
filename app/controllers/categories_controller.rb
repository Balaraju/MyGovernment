class CategoriesController < ApplicationController

	#respond_to :json

	def create_category
		category = Category.new(name: params[:name])
		if category.save
			render :json=> { :success => true, :category => category }
		else
			render :json=> { :success => false, :message => category.errors.full_messages }
		end
	end

	def update_category
		category = Category.find(params[:id])
		category.update name: params[:name]
		render :json=> { :success => true, :category => category }
	end
end
