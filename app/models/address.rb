class Address < ActiveRecord::Base
 	belongs_to :lodger
 	belongs_to :house
	validates :zip, presence: true
	validates :street, presence: true
	validates :number, presence: true

end
