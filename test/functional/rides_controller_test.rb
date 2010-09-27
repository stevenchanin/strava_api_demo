require 'test_helper'

class RidesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get efforts" do
    get :efforts
    assert_response :success
  end

end
