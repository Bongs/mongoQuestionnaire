require 'test_helper'

class QuestionbanksControllerTest < ActionController::TestCase
  setup do
    @questionbank = questionbanks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questionbanks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questionbank" do
    assert_difference('Questionbank.count') do
      post :create, questionbank: { description: @questionbank.description, title: @questionbank.title }
    end

    assert_redirected_to questionbank_path(assigns(:questionbank))
  end

  test "should show questionbank" do
    get :show, id: @questionbank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questionbank
    assert_response :success
  end

  test "should update questionbank" do
    put :update, id: @questionbank, questionbank: { description: @questionbank.description, title: @questionbank.title }
    assert_redirected_to questionbank_path(assigns(:questionbank))
  end

  test "should destroy questionbank" do
    assert_difference('Questionbank.count', -1) do
      delete :destroy, id: @questionbank
    end

    assert_redirected_to questionbanks_path
  end
end
