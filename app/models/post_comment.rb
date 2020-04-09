class PostComment < ApplicationRecord
	belongs_to :user
    validates :comment, presence: true, length: {maximum: 200, minimum: 1}
end
