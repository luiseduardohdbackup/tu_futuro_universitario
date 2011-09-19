require 'test_helper'

class CongressesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Congress.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Congress.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Congress.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to congress_url(assigns(:congress))
  end

  def test_edit
    get :edit, :id => Congress.first
    assert_template 'edit'
  end

  def test_update_invalid
    Congress.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Congress.first
    assert_template 'edit'
  end

  def test_update_valid
    Congress.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Congress.first
    assert_redirected_to congress_url(assigns(:congress))
  end

  def test_destroy
    congress = Congress.first
    delete :destroy, :id => congress
    assert_redirected_to congresses_url
    assert !Congress.exists?(congress.id)
  end
end
