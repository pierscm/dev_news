class Link < ApplicationRecord
  belongs_to :user
  has_many :comments

	def comment_count
  		comments.length
	end

  validates :title,
            presence: true,
            uniqueness: { case_sensitive: false }
            
validates :url,
          format: { with: %r{\Ahttps?://} },
          allow_blank: true


end
