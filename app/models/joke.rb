class Joke < ActiveRecord::Base
	validates :jokefie, presence: true

	belongs_to :user
end
