class Coworkingspace < ApplicationRecord
		mount_uploader :image, PhotoUploader
		belongs_to :user
		has_many :suggestionspaces
		has_many :orderspaces
end
