require 'test_helper'

class CollectionPointsControllerTest < ActionController::TestCase
  setup do
    @collection_point = collection_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:collection_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create collection_point" do
    assert_difference('CollectionPoint.count') do
      post :create, collection_point: { address: @collection_point.address, complement: @collection_point.complement, google_address: @collection_point.google_address, name: @collection_point.name, user_id: @collection_point.user_id }
    end

    assert_redirected_to collection_point_path(assigns(:collection_point))
  end

  test "should show collection_point" do
    get :show, id: @collection_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @collection_point
    assert_response :success
  end

  test "should update collection_point" do
    patch :update, id: @collection_point, collection_point: { address: @collection_point.address, complement: @collection_point.complement, google_address: @collection_point.google_address, name: @collection_point.name, user_id: @collection_point.user_id }
    assert_redirected_to collection_point_path(assigns(:collection_point))
  end

  test "should destroy collection_point" do
    assert_difference('CollectionPoint.count', -1) do
      delete :destroy, id: @collection_point
    end

    assert_redirected_to collection_points_path
  end
end
