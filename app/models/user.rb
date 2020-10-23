class User < ApplicationRecord
	has_many :post
	has_many :comment

	has_secure_password
end
