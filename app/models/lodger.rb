class Lodger < ActiveRecord::Base
	has_one :address

	accepts_nested_attributes_for :address

	validates :name, presence: true
	validates :phone, presence: true
	validates :cpf, uniqueness: true, presence: true,:cpf => true
	validates :rg, uniqueness: true, presence: true, numericality: true
	validates :sex, presence: true
	validates :maritalstatus, presence: true
	validates :occupation, presence: true

	scope :search, -> (query){ where("name like ?", "%#{query}") }

	#def self.search(query)
	#	where("name like ?", "%#{query}")
	#end
end
