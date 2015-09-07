class Status < ActiveRecord::Base
	validates :statusfie, presence: true

	belongs_to :user
end
