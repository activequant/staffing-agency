require 'test_helper'

class PositionStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @position_status = position_statuses(:one)
  end

  test "should get index" do
    get position_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_position_status_url
    assert_response :success
  end

  test "should create position_status" do
    assert_difference('PositionStatus.count') do
      post position_statuses_url, params: { position_status: { value: @position_status.value } }
    end

    assert_redirected_to position_status_url(PositionStatus.last)
  end

  test "should show position_status" do
    get position_status_url(@position_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_position_status_url(@position_status)
    assert_response :success
  end

  test "should update position_status" do
    patch position_status_url(@position_status), params: { position_status: { value: @position_status.value } }
    assert_redirected_to position_status_url(@position_status)
  end

  test "should destroy position_status" do
    assert_difference('PositionStatus.count', -1) do
      delete position_status_url(@position_status)
    end

    assert_redirected_to position_statuses_url
  end
end
