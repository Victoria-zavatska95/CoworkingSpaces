class Coworkingspace < ApplicationRecord
		mount_uploader :image, PhotoUploader
		belongs_to :user
		has_many :suggestionspaces
		has_many :orderspaces
		validates :city, :address, :area, :description, :price, :peopleNumber, :image, presence: true
		validates :area, :numericality => true
		validates :price, :numericality => true
		
end
