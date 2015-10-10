require 'test_helper'

class NameControllerTest < ActionController::TestCase
  test "should get [action" do
    get :[action
    assert_response :success
  end

  test "should get action]" do
    get :action]
    assert_response :success
  end

  test "should get [op" do
    get :[op
    assert_response :success
  end

end
