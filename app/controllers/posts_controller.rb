class PostsController < ApplicationController

	def index
		@quotes = Quote.all.order("created_at DESC")
		@images = Image.all.order("created_at DESC")
		@jokes = Joke.all.order("created_at DESC")
	end
end