require 'test_helper'

class SpacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @space = spaces(:one)
  end

  test "should get index" do
    get spaces_url
    assert_response :success
  end

  test "should get new" do
    get new_space_url
    assert_response :success
  end

  test "should create space" do
    assert_difference('Space.count') do
      post spaces_url, params: { space: { available_end_time: @space.available_end_time, available_friday: @space.available_friday, available_monday: @space.available_monday, available_saturday: @space.available_saturday, available_start_time: @space.available_start_time, available_sunday: @space.available_sunday, available_thursday: @space.available_thursday, available_tuesday: @space.available_tuesday, available_wednesday: @space.available_wednesday, bond: @space.bond, country: @space.country, description: @space.description, latitude: @space.latitude, longitude: @space.longitude, postcode: @space.postcode, price_day: @space.price_day, price_month: @space.price_month, price_week: @space.price_week, street: @space.street, suburb: @space.suburb, title: @space.title, user_id: @space.user_id } }
    end

    assert_redirected_to space_url(Space.last)
  end

  test "should show space" do
    get space_url(@space)
    assert_response :success
  end

  test "should get edit" do
    get edit_space_url(@space)
    assert_response :success
  end

  test "should update space" do
    patch space_url(@space), params: { space: { available_end_time: @space.available_end_time, available_friday: @space.available_friday, available_monday: @space.available_monday, available_saturday: @space.available_saturday, available_start_time: @space.available_start_time, available_sunday: @space.available_sunday, available_thursday: @space.available_thursday, available_tuesday: @space.available_tuesday, available_wednesday: @space.available_wednesday, bond: @space.bond, country: @space.country, description: @space.description, latitude: @space.latitude, longitude: @space.longitude, postcode: @space.postcode, price_day: @space.price_day, price_month: @space.price_month, price_week: @space.price_week, street: @space.street, suburb: @space.suburb, title: @space.title, user_id: @space.user_id } }
    assert_redirected_to space_url(@space)
  end

  test "should destroy space" do
    assert_difference('Space.count', -1) do
      delete space_url(@space)
    end

    assert_redirected_to spaces_url
  end
end
