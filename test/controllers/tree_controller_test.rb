drequire "test_helper"

class TreeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tree_index_url
    assert_response :success
  end

  test "should get create" do
    get tree_create_url
    assert_response :success
  end

  test "should get read" do
    get tree_read_url
    assert_response :success
  end

  test "should get update" do
    get tree_update_url
    assert_response :success
  end

  test "should get delete" do
    get tree_delete_url
    assert_response :success
  end
end
