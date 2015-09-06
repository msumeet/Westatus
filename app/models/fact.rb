class Fact < ActiveRecord::Base
	validates :factfie, presence: true
	
	belongs_to :user
end
