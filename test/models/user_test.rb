require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "default user img" do
    u = User.new(name: "user A", bio: "J'aime Twitter.")
    assert u.save
    assert_equal "http://images.hellogiggles.com/uploads/2016/04/09045809/ewok-500x375.jpg", u.img_url
  end

  test "default user cover" do
    u = User.new(name: "user A", bio: "J'aime Twitter.")
    assert u.save
    assert_equal "https://static.pexels.com/photos/132800/pexels-photo-132800.jpeg", u.cover_picture
  end

  test "user_same_name" do
    u = User.new(name: "user")
    u1 = User.new(name: "user")
    assert u.save
    assert_not u1.save
  end

  test "lenth_tweet" do
    u = User.new(name: "user")
    t = Tweet.new( user_id: u.id ,content: "je suis un tweet trop long: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id imperdiet urna. Donec dapibus nisi et ullamcorper bibendum. Integer at diam in metus. ")
    assert_not t.save

  end
end
