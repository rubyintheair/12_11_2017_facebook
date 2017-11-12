require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should allow setting name - case wrong name" do
    a = User.new 
    a.name = "Quy"
    assert_equal "Minh", a.name
  end 

  test "should allow setting name - case true name" do
    a = User.new 
    a.name = "Quy"
    assert_equal "Quy", a.name
  end 

  test "should not save without email" do 
    a = User.new 
    assert_not a.save #cai dong nay de lam j dzay => chac la de kiem tra xem email khong luu dc
    assert_equal ["can't be blank"], a.errors[:email] #neu email khong luu duoc thi...
  end 



end
