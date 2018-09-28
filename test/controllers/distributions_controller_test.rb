require 'test_helper'

class DistributionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get distributions_new_url
    assert_response :success
  end

  test "should get edit" do
    get distributions_edit_url
    assert_response :success
  end

  test "should get show" do
    get distributions_show_url
    assert_response :success
  end

  test "should get index" do
    get distributions_index_url
    assert_response :success
  end

end
