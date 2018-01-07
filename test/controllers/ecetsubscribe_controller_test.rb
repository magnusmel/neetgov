require 'test_helper'

class EcetsubscribeControllerTest < ActionDispatch::IntegrationTest
  test "should get apindex" do
    get ecetsubscribe_apindex_url
    assert_response :success
  end

  test "should get tsindex" do
    get ecetsubscribe_tsindex_url
    assert_response :success
  end

end
