class User < ApplicationRecord
	has_secure_password

	validates :username,
	presence: true,
	length: {minimum: 4},
	uniqueness: {case_sensitive: false}
	has_many :links, dependent: :destroy
	has_many :comments

	validates :password, length: {minimum:7}

	def owns_link?(link)
  		self == link.user
	end

	def owns_comment?(comment)
  		self == comment.user
	end
end
