require 'test_helper'

class StorageLocationControllerTest < ActionDispatch::IntegrationTest
  test "should get lookup" do
    get storage_location_lookup_url
    assert_response :success
  end

end
