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

  test "should get edit" do
    splinter = Splinter.new(id: 1, title: Faker::Company.catch_phrase, url: Faker::Internet.url, image: "abc")
    splinter.save
    get(:edit, {'id' => "1"})
    assert_response :success
  end

  test "should get show" do
    splinter = Splinter.new(id: 1, title: Faker::Company.catch_phrase, url: Faker::Internet.url, image: "abc")
    splinter.save
    get(:show, {'id' => "1"})
    assert_response :success
    assert_select 'dd', splinter.title
    assert_select 'dd', splinter.url
    assert_select 'dd', splinter.image
  end

  test "should get index" do
    splinters = []
    (1..5).each do |id|
      splinter = Splinter.new(id: id, title: Faker::Company.catch_phrase, url: Faker::Internet.url, image: "abc")
      splinter.save
      splinters.push(splinter)
    end

    get :index
    assert_response :success

    splinters.each do |splinter|
      assert_select 'td', splinter.title
      assert_select 'td', splinter.url
      assert_select 'td', splinter.image
    end
  end
end
