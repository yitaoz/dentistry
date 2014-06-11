require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get success" do
    get :success
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

end
