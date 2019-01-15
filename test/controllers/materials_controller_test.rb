require 'test_helper'

class MaterialsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get materials_search_url
    assert_response :success
  end

end
