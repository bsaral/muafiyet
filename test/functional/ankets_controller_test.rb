require 'test_helper'

class AnketsControllerTest < ActionController::TestCase
  setup do
    @anket = ankets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ankets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anket" do
    assert_difference('Anket.count') do
      post :create, anket: { answer: @anket.answer }
    end

    assert_redirected_to anket_path(assigns(:anket))
  end

  test "should show anket" do
    get :show, id: @anket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anket
    assert_response :success
  end

  test "should update anket" do
    put :update, id: @anket, anket: { answer: @anket.answer }
    assert_redirected_to anket_path(assigns(:anket))
  end

  test "should destroy anket" do
    assert_difference('Anket.count', -1) do
      delete :destroy, id: @anket
    end

    assert_redirected_to ankets_path
  end
end
