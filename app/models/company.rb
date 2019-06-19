class Company < ApplicationRecord
   has_secure_password
  has_many :jobs
	validates :compName,uniqueness: {case_sensitive: false},presence: true,length:{minimum: 2, maximum: 200}
	validates :hrName,presence: true,length:{minimum: 2, maximum: 100}
	VALID_CONTACT_NUMBER_REGEX=/^(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}$/i
	validates :contactNumber,presence: true,
	 format: {with: VALID_CONTACT_NUMBER_REGEX,multiline:true}
    validates :compPostalAddress,presence: true,length:{minimum: 5,maximum: 300 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email,uniqueness: {case_sensitive: false},presence: true,length:{minimum:5,maximum: 50},
      format: {with: VALID_EMAIL_REGEX}
      VALID_WEBSITE_REGEX =/^[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/i 
    validates :website,presence: true,length:{minimum:5,maximum: 100},
    format: {with: VALID_WEBSITE_REGEX,multiline:true}
    validates_confirmation_of :password
   
	
end