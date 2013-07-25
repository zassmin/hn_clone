class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :post_votes

  validates :user_id, presence: true
end
