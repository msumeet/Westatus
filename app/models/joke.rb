class Joke < ActiveRecord::Base
	validates :jokefie, presence: true
end
