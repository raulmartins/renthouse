class Contract < ActiveRecord::Base
  belongs_to :house
  belongs_to :lodger

  validates :monthlyPayment, presence: true, numericality: true
  validates :bail, numericality: true
  validates :startDate, presence: true
  validates :finalDate, presence: true
  validates :house, presence: true
  validates :lodger, presence: true

  def self.search(query)
		where("Contract like ?", "%#{query}")
	end

end
