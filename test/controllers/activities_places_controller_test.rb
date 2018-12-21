require 'test_helper'

class ActivitiesPlacesControllerTest < ActionDispatch::IntegrationTest
  test "should get activity_id" do
    get activities_places_activity_id_url
    assert_response :success
  end

  test "should get place_id" do
    get activities_places_place_id_url
    assert_response :success
  end

end
