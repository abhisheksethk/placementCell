class Student < ApplicationRecord
	 has_secure_password
	 has_many :applies
	  
	 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
     validates :email,uniqueness: {case_sensitive: false},presence: true,length:{minimum:5,maximum: 50},
     format: {with: VALID_EMAIL_REGEX}
     VALID_CONTACT_NUMBER_REGEX=/^(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}$/i
	 validates :contact,presence: true,
	 format: {with: VALID_CONTACT_NUMBER_REGEX,multiline:true}
	 validates :registration,uniqueness: true,presence: true,length:{is:8},
	 format: {with: VALID_CONTACT_NUMBER_REGEX,multiline:true}
end
