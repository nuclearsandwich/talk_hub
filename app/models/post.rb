class Post < ActiveRecord::Base
  attr_accessible :body, :title, :user_id, :user

  validates :title, :presence => true, :uniqueness => true
  validates :body, :presence => true
  validates :user_id, :presence => true

  belongs_to :user
end
