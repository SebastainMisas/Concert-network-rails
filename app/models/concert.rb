class Concert < ActiveRecord::Base
	has_many :comments
	validates :artist, presence: true
	validates :city, presence: true
	validates :venue, presence: true 
	validates :date, presence: true 
	validates :description, presence: true 
	validates :description, length: {maximum: 400}
	validates :price, presence: true
	validate :date_cannot_be_in_the_past

	def date_cannot_be_in_the_past
		errors.add(:date, "can't be in the past") if
			!date.blank? and date < Date.today
	end
end
