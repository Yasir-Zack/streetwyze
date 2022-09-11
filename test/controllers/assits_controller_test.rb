require 'test_helper'

class AssitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get assits_index_url
    assert_response :success
  end

  test "should get new" do
    get assits_new_url
    assert_response :success
  end

  test "should get create" do
    get assits_create_url
    assert_response :success
  end

  test "should get show" do
    get assits_show_url
    assert_response :success
  end

end
