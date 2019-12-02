require 'test_helper'

class Web::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get session_url
    assert_response :success
  end

end
