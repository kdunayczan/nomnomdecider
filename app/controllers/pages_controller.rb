require "http"

class PagesController < ApplicationController

	def home
		response = HTTP.auth("Bearer #{ENV['YELP_API_KEY']}").get(
			'https://api.yelp.com/v3/businesses/search', 
			params: {
				term: "french",
				location: "manhattan",
				price: 1,
				open_now: true,
				limit: 5
			})

		@food_types = ["Italian", "American", "Chinese", "Japanese", "Mexican", "Seafood", "Mediterranean", "Thai", "Indian", "French", "Korean", "Barbeque", "Vegetarian"]

		@locations = ["Manhattan", "Brooklyn", "Queens", "The Bronx", "Staten Island"]
	end

end



