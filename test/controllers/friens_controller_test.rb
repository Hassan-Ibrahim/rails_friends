require "test_helper"

class FriensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frien = friens(:one)
  end

  test "should get index" do
    get friens_url
    assert_response :success
  end

  test "should get new" do
    get new_frien_url
    assert_response :success
  end

  test "should create frien" do
    assert_difference('Frien.count') do
      post friens_url, params: { frien: { email: @frien.email, first_name: @frien.first_name, last_name: @frien.last_name, phone: @frien.phone, twitter: @frien.twitter } }
    end

    assert_redirected_to frien_url(Frien.last)
  end

  test "should show frien" do
    get frien_url(@frien)
    assert_response :success
  end

  test "should get edit" do
    get edit_frien_url(@frien)
    assert_response :success
  end

  test "should update frien" do
    patch frien_url(@frien), params: { frien: { email: @frien.email, first_name: @frien.first_name, last_name: @frien.last_name, phone: @frien.phone, twitter: @frien.twitter } }
    assert_redirected_to frien_url(@frien)
  end

  test "should destroy frien" do
    assert_difference('Frien.count', -1) do
      delete frien_url(@frien)
    end

    assert_redirected_to friens_url
  end
end
