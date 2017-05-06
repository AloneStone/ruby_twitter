class User < ApplicationRecord

  validates :name , uniqueness: true

  has_many :tweets

  has_many :followed_by, :class_name => 'Follow', :foreign_key => :followed_id
  has_many :followers, :through => :followed_by

  has_many :follows, :foreign_key => :follower_id
  has_many :followings, :through => :follows


  after_validation :set_default_img, :set_default_cover

  private
   def set_default_img
     default_url = "http://images.hellogiggles.com/uploads/2016/04/09045809/ewok-500x375.jpg"
     self.img_url = default_url if self.img_url.blank?
   end

  private
  def set_default_cover
    default_url = "https://static.pexels.com/photos/132800/pexels-photo-132800.jpeg"
    self.cover_picture = default_url if self.cover_picture.blank?
  end

end