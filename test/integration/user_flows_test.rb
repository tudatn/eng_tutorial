require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest

  # include TestPasswordHelper

  test "should enable user to login" do
      admin = users(:admin)
      get '/access/login'
      assert_response :success
      post '/access/attempt_login', username: admin.username, password: "not default_password"
      get access_menu_path
      assert_response :redirect
      post '/access/attempt_login', username: admin.username, password: default_password
      assert_redirected_to access_menu_path
    end
end
