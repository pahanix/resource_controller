require File.dirname(__FILE__) + '/../test_helper'

class NothingsControllerTest < ActionController::TestCase
  def setup
    @nothing = nothings :one
  end

  context "on get to :index" do
    setup do
      get :index
    end

    should_redirect_to '"/"'
  end

  context "on post to :create" do
    setup do
      post :create, :nothing => {}
    end

    should_redirect_to '"/"'
    should_not_change "Nothing.count"
  end
  
  context "on get to :new" do
    setup do
      get :new
    end

    should_redirect_to '"/"'
  end

  context "on get to :show" do
    setup do
      get :show, :id => @nothing.id
    end

    should_redirect_to '"/"'
  end

  context "on get to :edit" do
    setup do
      get :edit, :id => @nothing.id
    end

    should_redirect_to '"/"'
  end
  
  context "on put to :update" do
    setup do
      put :update, :id => @nothing.id
    end

    should_redirect_to '"/"'
    should_not_change "Nothing.find(@nothing.id).updated_at"
  end

  context "on delete to :destroy" do
    setup do
      delete :destroy, :id => @nothing.id
    end

    should_redirect_to '"/"'
    should_not_change "Nothing.count"
  end  
end
