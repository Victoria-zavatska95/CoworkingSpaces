class Coworkingspace < ApplicationRecord
		mount_uploader :image, PhotoUploader
		belongs_to :user
		has_many :suggestionspace
end
