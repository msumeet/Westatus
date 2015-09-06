class Quote < ActiveRecord::Base
	validates :quotefie, presence: true

	belongs_to :user
end
