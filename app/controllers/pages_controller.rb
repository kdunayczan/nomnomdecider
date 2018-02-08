require "http"

class PagesController < ApplicationController

	def home
		response = HTTP.auth("Bearer #{ENV['YELP_API_KEY']}").get(
			'https://api.yelp.com/v3/businesses/search', 
			params: {
				term: "dinner",
				location: "manhattan",
				limit: 5
			})
	end

end
