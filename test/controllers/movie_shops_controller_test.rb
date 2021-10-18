require "test_helper"

class MovieShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movie_shops_index_url
    assert_response :success
  end

  test "should get show" do
    get movie_shops_show_url
    assert_response :success
  end
end
