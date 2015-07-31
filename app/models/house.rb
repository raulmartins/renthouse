class House < ActiveRecord::Base
	validates :compartment, presence: true, numericality: true
	validates :typehouse, presence: true
	validates :status, presence: true
	has_one :address
	has_one :contract
	accepts_nested_attributes_for :address

	# scope :search, -> (query) { where("Street like ?", "%#{query}")  }


	def self.search(query)
		where("status like ?", "%#{query}")
	end
end
