require 'test_helper'

class CatalogueControllerTest < ActionController::TestCase
  test "should get four_ball" do
    get :four_ball
    assert_response :success
  end

end
