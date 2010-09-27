require 'test_helper'

class ClubsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get members" do
    get :members
    assert_response :success
  end

end
