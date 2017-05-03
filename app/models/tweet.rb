class Tweet < ApplicationRecord

  validates :content , length: {:minimum => 1 , :maximum => 150}

  belongs_to :user
end
