require "test_helper"

class ItemtypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itemtype = itemtypes(:one)
  end

  test "should get index" do
    get itemtypes_url
    assert_response :success
  end

  test "should get new" do
    get new_itemtype_url
    assert_response :success
  end

  test "should create itemtype" do
    assert_difference('Itemtype.count') do
      post itemtypes_url, params: { itemtype: { name: @itemtype.name } }
    end

    assert_redirected_to itemtype_url(Itemtype.last)
  end

  test "should show itemtype" do
    get itemtype_url(@itemtype)
    assert_response :success
  end

  test "should get edit" do
    get edit_itemtype_url(@itemtype)
    assert_response :success
  end

  test "should update itemtype" do
    patch itemtype_url(@itemtype), params: { itemtype: { name: @itemtype.name } }
    assert_redirected_to itemtype_url(@itemtype)
  end

  test "should destroy itemtype" do
    assert_difference('Itemtype.count', -1) do
      delete itemtype_url(@itemtype)
    end

    assert_redirected_to itemtypes_url
  end
end
