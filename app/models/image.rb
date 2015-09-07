class Image < ActiveRecord::Base
	if Rails.env.development?
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default.png"

	else
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default.png",
	:storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
	end


  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  	validates :title, presence: true
  	validates_attachment_presence :image

  	belongs_to :user
end
