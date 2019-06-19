class Exam < ApplicationRecord
	belongs_to :job
    validates :examtype,:date,:time,:job_id,presence: true
end
