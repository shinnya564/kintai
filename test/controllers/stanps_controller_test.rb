require 'test_helper'

class StanpsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stanps_index_url
    assert_response :success
  end

end
