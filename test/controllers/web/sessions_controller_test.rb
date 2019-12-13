# frozen_string_literal: true

require 'test_helper'

class Web::SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    user = create(:user)
    sign_in_as user
  end

  test 'should get show' do
    get board_url
    assert_response :success
  end

  test 'should post create' do
    password = generate(:string)
    user = create(:user, password: password)
    attrs = {
      email: user.email,
      password: password
    }
    post session_url, params: { session: attrs }
    assert_response :redirect
  end

  test 'should delete destroy' do
    delete session_url
    assert_response :redirect
  end
end
