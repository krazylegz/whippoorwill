require 'test_helper'

class CommentatorsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:commentators)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_commentator
    assert_difference('Commentator.count') do
      post :create, :commentator => { }
    end

    assert_redirected_to commentator_path(assigns(:commentator))
  end

  def test_should_show_commentator
    get :show, :id => commentators(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => commentators(:one).id
    assert_response :success
  end

  def test_should_update_commentator
    put :update, :id => commentators(:one).id, :commentator => { }
    assert_redirected_to commentator_path(assigns(:commentator))
  end

  def test_should_destroy_commentator
    assert_difference('Commentator.count', -1) do
      delete :destroy, :id => commentators(:one).id
    end

    assert_redirected_to commentators_path
  end
end
