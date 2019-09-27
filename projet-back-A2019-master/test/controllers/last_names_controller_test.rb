require 'test_helper'

class LastNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @last_name = last_names(:one)
  end

  test "should get index" do
    get last_names_url
    assert_response :success
  end

  test "should get new" do
    get new_last_name_url
    assert_response :success
  end

  test "should create last_name" do
    assert_difference('LastName.count') do
      post last_names_url, params: { last_name: { birthday: @last_name.birthday } }
    end

    assert_redirected_to last_name_url(LastName.last)
  end

  test "should show last_name" do
    get last_name_url(@last_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_last_name_url(@last_name)
    assert_response :success
  end

  test "should update last_name" do
    patch last_name_url(@last_name), params: { last_name: { birthday: @last_name.birthday } }
    assert_redirected_to last_name_url(@last_name)
  end

  test "should destroy last_name" do
    assert_difference('LastName.count', -1) do
      delete last_name_url(@last_name)
    end

    assert_redirected_to last_names_url
  end
end
