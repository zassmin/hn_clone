class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  before_save {username.downcase!}

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
