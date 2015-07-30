require 'test_helper'

class LodgersControllerTest < ActionController::TestCase
  setup do
    @lodger = lodgers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lodgers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lodger" do
    assert_difference('Lodger.count') do
      post :create, lodger: { cpf: @lodger.cpf, maritalstatus: @lodger.maritalstatus, name: @lodger.name, occupation: @lodger.occupation, phone: @lodger.phone, rg: @lodger.rg, sex: @lodger.sex }
    end

    assert_redirected_to lodger_path(assigns(:lodger))
  end

  test "should show lodger" do
    get :show, id: @lodger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lodger
    assert_response :success
  end

  test "should update lodger" do
    patch :update, id: @lodger, lodger: { cpf: @lodger.cpf, maritalstatus: @lodger.maritalstatus, name: @lodger.name, occupation: @lodger.occupation, phone: @lodger.phone, rg: @lodger.rg, sex: @lodger.sex }
    assert_redirected_to lodger_path(assigns(:lodger))
  end

  test "should destroy lodger" do
    assert_difference('Lodger.count', -1) do
      delete :destroy, id: @lodger
    end

    assert_redirected_to lodgers_path
  end
end
