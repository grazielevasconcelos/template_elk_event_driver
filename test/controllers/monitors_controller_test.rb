require 'test_helper'

class MonitorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get monitors_index_url
    assert_response :success
  end

end
