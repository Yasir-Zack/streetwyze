require 'test_helper'

class SubstancesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get substances_index_url
    assert_response :success
  end

  test "should get new" do
    get substances_new_url
    assert_response :success
  end

  test "should get create" do
    get substances_create_url
    assert_response :success
  end

end
