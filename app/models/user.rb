class User < ApplicationRecord

  validates :name , uniqueness: true

  has_many :tweets

  after_validation :set_default_img

  private
   def set_default_img
     default_url = "http://www.echantillonsgratuits.be/wp-content/uploads/2015/01/jackouille.jpg"
     self.img_url = default_url if self.img_url.blank?
   end
end
