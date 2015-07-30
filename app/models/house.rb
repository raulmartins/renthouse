class House < ActiveRecord::Base
	has_one :address
	accepts_nested_attributes_for :address

	validates :compartment, presence: true, numericality: true
	validates :type, presence: true
end
