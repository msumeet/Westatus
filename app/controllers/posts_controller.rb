class PostsController < ApplicationController

	def index
		@quotes = Quote.all.order("created_at DESC")
	end
end