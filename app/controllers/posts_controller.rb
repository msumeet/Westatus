class PostsController < ApplicationController

	def index
		@quotes = Quote.all.order("created_at DESC")
		@images = Image.all.order("created_at DESC")
		@jokes = Joke.all.order("created_at DESC")
		@facts = Fact.all.order("created_at DESC")
		@statuses = Status.all.order("created_at DESC")

		@items = (@quotes.to_a + @jokes.to_a + @images.to_a + @facts.to_a + @statuses.to_a).reverse

	end
end