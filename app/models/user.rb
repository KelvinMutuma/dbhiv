class User < ActiveRecord::Base
	has_secure_password

	validates :username, presence: true, uniqueness: {case_sensitive: false},
				length: {in: 4..12},
				format: { with: /^[a-z][a-z0-9]*$/, multiline: true, message: "Can only contain lowercase letters and numbers"}
	validates :password, length:{in: 4..80}	
	validates :password_confirmation, length: {in: 4..80}		
end
