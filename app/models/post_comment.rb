class PostComment < ApplicationRecord
	belongs_to :user
    attachment :image
    has_many :post_comments, dependent: :destroy
    validates :comment, presence: true, length: {maximum: 200, minimum: 1}
end
