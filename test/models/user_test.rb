require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "default user img" do
    u = User.new(name: "user A", bio: "J'aime Twitter.")
    assert u.save
    assert_equal "http://www.echantillonsgratuits.be/wp-content/uploads/2015/01/jackouille.jpg", u.img_url
  end
end
