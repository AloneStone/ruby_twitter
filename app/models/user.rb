class User < ApplicationRecord

  validates :name , uniqueness: true


  has_many :followed_by, :class_name => 'Follow', :foreign_key => :followed_id
  has_many :followers, :through => :followed_by

  has_many :follows, :foreign_key => :follower_id
  has_many :followings, :through => :follows

  has_many :tweets
end
