  class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  if Rails.env.development?
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default_user_avatar.png"

  else
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default_user_avatar.png",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  end

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates :name, presence: true

  has_many :quotes, dependent: :destroy
  has_many :jokes, dependent: :destroy
  has_many :images, dependent: :destroy
  has_many :facts, dependent: :destroy
  has_many :statuses, dependent: :destroy
end
