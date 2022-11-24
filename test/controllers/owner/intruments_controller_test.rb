require "test_helper"

class Owner::IntrumentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_intruments_index_url
    assert_response :success
  end

  test "should get new" do
    get owner_intruments_new_url
    assert_response :success
  end

  test "should get create" do
    get owner_intruments_create_url
    assert_response :success
  end
end
