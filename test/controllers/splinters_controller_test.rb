require 'test_helper'

class SplintersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should post create" do
    post :create, splinter: {title: "test", url: "http://www.github.com", image: "abc"}
    assert_response :redirect
  end

  test "should get show" do
    get(:show, {'id' => "1"})
    assert_response :success
  end
end
