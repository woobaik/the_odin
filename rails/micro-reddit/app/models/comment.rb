class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :post_id, :user_id, :content, presence:true
end
