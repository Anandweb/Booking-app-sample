require 'test_helper'

class HotelsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get detsils" do
    get :detsils
    assert_response :success
  end

end
