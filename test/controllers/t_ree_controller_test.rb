require "test_helper"

class TReeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get t_ree_index_url
    assert_response :success
  end

  test "should get create" do
    get t_ree_create_url
    assert_response :success
  end

  test "should get read" do
    get t_ree_read_url
    assert_response :success
  end

  test "should get update" do
    get t_ree_update_url
    assert_response :success
  end

  test "should get delete" do
    get t_ree_delete_url
    assert_response :success
  end
end
