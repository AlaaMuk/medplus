class User < ActiveRecord::Base
	has_secure_password
	has_many :medications
	has_many :patients
	has_many :hcprof 
	
end
