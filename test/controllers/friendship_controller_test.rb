require 'test_helper'

class FriendshipControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get friendship_new_url
    assert_response :success
  end

  test "should get create" do
    get friendship_create_url
    assert_response :success
  end

end
