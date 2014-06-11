require 'test_helper'

class RailsControllerTest < ActionController::TestCase
  test "should get generage" do
    get :generage
    assert_response :success
  end

  test "should get controller" do
    get :controller
    assert_response :success
  end

  test "should get Pages" do
    get :Pages
    assert_response :success
  end

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
