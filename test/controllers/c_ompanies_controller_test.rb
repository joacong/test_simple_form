require 'test_helper'

class COmpaniesControllerTest < ActionController::TestCase
  setup do
    @c_ompany = c_ompanies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_ompanies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_ompany" do
    assert_difference('COmpany.count') do
      post :create, c_ompany: { name: @c_ompany.name }
    end

    assert_redirected_to c_ompany_path(assigns(:c_ompany))
  end

  test "should show c_ompany" do
    get :show, id: @c_ompany
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_ompany
    assert_response :success
  end

  test "should update c_ompany" do
    patch :update, id: @c_ompany, c_ompany: { name: @c_ompany.name }
    assert_redirected_to c_ompany_path(assigns(:c_ompany))
  end

  test "should destroy c_ompany" do
    assert_difference('COmpany.count', -1) do
      delete :destroy, id: @c_ompany
    end

    assert_redirected_to c_ompanies_path
  end
end
