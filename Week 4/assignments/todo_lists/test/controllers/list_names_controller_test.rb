require 'test_helper'

class ListNamesControllerTest < ActionController::TestCase
  setup do
    @list_name = list_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_name" do
    assert_difference('ListName.count') do
      post :create, list_name: { list_due_date: @list_name.list_due_date }
    end

    assert_redirected_to list_name_path(assigns(:list_name))
  end

  test "should show list_name" do
    get :show, id: @list_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list_name
    assert_response :success
  end

  test "should update list_name" do
    patch :update, id: @list_name, list_name: { list_due_date: @list_name.list_due_date }
    assert_redirected_to list_name_path(assigns(:list_name))
  end

  test "should destroy list_name" do
    assert_difference('ListName.count', -1) do
      delete :destroy, id: @list_name
    end

    assert_redirected_to list_names_path
  end
end
