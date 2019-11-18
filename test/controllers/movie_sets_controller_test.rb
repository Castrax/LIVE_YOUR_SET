require 'test_helper'

class MovieSetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movie_sets_index_url
    assert_response :success
  end

  test "should get show" do
    get movie_sets_show_url
    assert_response :success
  end

end
