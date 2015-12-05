class SearchController < ApplicationController


	def search_services
		if params[:term].present?
		  services = Service.where("name LIKE ?", "%#{params[:term]}%")  
      render :json=> { :success => true, :services => services }
	  else
	    render :json=> { :success => false, :services => {} }
	  end
	end


end


