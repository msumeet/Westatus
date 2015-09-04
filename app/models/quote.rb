class Quote < ActiveRecord::Base
	validates :quotefie, presence: true
end
