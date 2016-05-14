require 'test_helper'

class MasscomControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get success" do
    get :success
    assert_response :success
  end

  test "should get edit_number" do
    get :edit_number
    assert_response :success
  end

end
