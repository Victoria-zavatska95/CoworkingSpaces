class Orderspace < ApplicationRecord
	belongs_to :user
	belongs_to :coworkingspace

	validate :available_people_number

	def available_people_number
		peopleTaken = 0
		coworkingspace.orderspaces.each do |order|
			if 	!(beginDate > order.finishDate || finishDate < order.beginDate)
		peopleTaken += order.peopleNumber
	end
	end
	peopleAvailable = coworkingspace.peopleNumber - peopleTaken
	
	if peopleTaken + peopleNumber > coworkingspace.peopleNumber
		errors.add(:peopleNumber, 'You cannot to book this cowoking place for #{peopleNumber} people. This space is available only for #{peopleAvailable} more people')
			throw(:abort)
	else
	end
	end	
end
