class Apply < ApplicationRecord
	belongs_to :student
	belongs_to :job
	validates :name,:student_id,:job_id,presence: true
end
