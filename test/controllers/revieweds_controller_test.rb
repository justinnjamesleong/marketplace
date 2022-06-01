require "test_helper"

class ReviewedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reviewed = revieweds(:one)
  end

  test "should get index" do
    get revieweds_url
    assert_response :success
  end

  test "should get new" do
    get new_reviewed_url
    assert_response :success
  end

  test "should create reviewed" do
    assert_difference('Reviewed.count') do
      post revieweds_url, params: { reviewed: { comments: @reviewed.comments } }
    end

    assert_redirected_to reviewed_url(Reviewed.last)
  end

  test "should show reviewed" do
    get reviewed_url(@reviewed)
    assert_response :success
  end

  test "should get edit" do
    get edit_reviewed_url(@reviewed)
    assert_response :success
  end

  test "should update reviewed" do
    patch reviewed_url(@reviewed), params: { reviewed: { comments: @reviewed.comments } }
    assert_redirected_to reviewed_url(@reviewed)
  end

  test "should destroy reviewed" do
    assert_difference('Reviewed.count', -1) do
      delete reviewed_url(@reviewed)
    end

    assert_redirected_to revieweds_url
  end
end
