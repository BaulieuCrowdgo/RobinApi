require 'test_helper'

class RobinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @robin = robins(:one)
  end

  test "should get index" do
    get robins_url
    assert_response :success
  end

  test "should get new" do
    get new_robin_url
    assert_response :success
  end

  test "should create robin" do
    assert_difference('Robin.count') do
      post robins_url, params: { robin: { status: @robin.status } }
    end

    assert_redirected_to robin_url(Robin.last)
  end

  test "should show robin" do
    get robin_url(@robin)
    assert_response :success
  end

  test "should get edit" do
    get edit_robin_url(@robin)
    assert_response :success
  end

  test "should update robin" do
    patch robin_url(@robin), params: { robin: { status: @robin.status } }
    assert_redirected_to robin_url(@robin)
  end

  test "should destroy robin" do
    assert_difference('Robin.count', -1) do
      delete robin_url(@robin)
    end

    assert_redirected_to robins_url
  end
end
