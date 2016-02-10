require 'test_helper'

class SplintersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should post create" do
    post :create, splinter: {title: Faker::Company.catch_phrase, url: Faker::Internet.url, image: "abc"}
    assert_response :redirect
  end

  test "should get show" do
    splinter = Splinter.new(id: 1, title: Faker::Company.catch_phrase, url: Faker::Internet.url, image: "abc")
    splinter.save
    get(:show, {'id' => "1"})
    assert_response :success
  end
end
