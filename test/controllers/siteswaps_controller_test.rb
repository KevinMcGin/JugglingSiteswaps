require 'test_helper'

class SiteswapsControllerTest < ActionController::TestCase
  setup do
    @siteswap = siteswaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:siteswaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create siteswap" do
    assert_difference('Siteswap.count') do
      post :create, siteswap: { description: @siteswap.description, difficulty: @siteswap.difficulty, image_url: @siteswap.image_url, name: "Newest Siteswap", ball_count: @siteswap.ball_count }
    end

    assert_redirected_to siteswap_path(assigns(:siteswap))
  end

  test "should show siteswap" do
    get :show, id: @siteswap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @siteswap
    assert_response :success
  end

  test "should update siteswap" do
    patch :update, id: @siteswap, siteswap: { description: @siteswap.description, difficulty: @siteswap.difficulty, image_url: @siteswap.image_url, name: "New SiteSwap" }
    assert_redirected_to siteswap_path(assigns(:siteswap))
  end

  test "should destroy siteswap" do
    assert_difference('Siteswap.count', -1) do
      delete :destroy, id: @siteswap
    end

    assert_redirected_to siteswaps_path
  end
end
