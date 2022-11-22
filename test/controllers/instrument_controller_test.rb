require "test_helper"

class InstrumentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get instrument_index_url
    assert_response :success
  end

  test "should get show" do
    get instrument_show_url
    assert_response :success
  end
end
