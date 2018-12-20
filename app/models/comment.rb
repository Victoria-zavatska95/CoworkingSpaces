class Comment < ApplicationRecord
belongs_to :user
mount_uploader :image, PhotoUploader
validates :message, presence: true
end
