class Suggestionspace < ApplicationRecord
	belongs_to :coworkingspace
	validate :date_is_new

		def date_is_new
			@coworkingspace = Coworkingspace.find(coworkingspace_id)
		invalid_date = @coworkingspace.suggestionspaces.map do |space|
			
			!(beginDate > space.finishDate || finishDate < space.beginDate)

		end


		if invalid_date.any?
			errors.add(:beginDate, 'Such date is already created!')
			throw(:abort)
		end
		end	
end
