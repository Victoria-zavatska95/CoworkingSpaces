class Orderspace < ApplicationRecord
	belongs_to :user
	belongs_to :coworkingspace
end
