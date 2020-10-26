require 'test_helper'

class ChampionshipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get championships_index_url
    assert_response :success
  end

  test "should get new" do
    get championships_new_url
    assert_response :success
  end

end
