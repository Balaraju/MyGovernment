class SearchController < ApplicationController


	def search_services
		if params[:term].nil?
      services = []
      render :json=> { :success => false, :services => services }
	  else
	    services = Service.search params[:term]
	    render :json=> { :success => false, :services => services }
	  end
	end


end


