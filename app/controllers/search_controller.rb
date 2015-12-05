class SearchController < ApplicationController
	def search_services
		render :json => Service.search(params['term'])
	end
end