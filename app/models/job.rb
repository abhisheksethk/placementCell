class Job < ApplicationRecord
	belongs_to :company
	has_many :applies
	has_many :exams
	validates :package,:location,:critria,:company_id,:name,presence: true
end
