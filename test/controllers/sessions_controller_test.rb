require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    conor = users(:one)
    post :create, name: conor.name, password: 'secret'
    assert_redirected_to admin_url
    assert_equal conor.id, session[:user_id]
  end

  test "should fail login" do
    conor = users(:one)
    post :create, name: conor.name, password: 'wrong'
    assert_redirected_to login_url
  end

  test "should logout" do
    delete :destroy
    assert_redirected_to catalogue_url
  end
end
