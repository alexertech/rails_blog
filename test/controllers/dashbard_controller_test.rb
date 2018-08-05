require 'test_helper'

class DashbardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashbard_index_url
    assert_response :success
  end

end
