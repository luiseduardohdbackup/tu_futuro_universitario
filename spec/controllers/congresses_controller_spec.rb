require 'spec_helper'

describe CongressesController do

  include Devise::TestHelpers
  before (:each) do
    @user = Factory(:user, :role=>"admin")
    sign_in @user
  end

  describe '#new' do
    it 'Creates a congress object' do
      get :new
      assigns(:congress).should be_present
    end
  end

  describe '#create' do
    context 'With valid params' do 
      let(:params){{:congress => Factory.build(:congress).attributes}}
      it 'Creates a new congress' do
        lambda {post :create, params}.should change(Congress, :count).by(1)
      end
      it 'Renders a flash notice' do
        post :create, params
        flash[:notice].should be_present
      end
    end
    context 'With invalid params' do
      let(:params){{:congress =>Factory.build(:congress).attributes.merge({:title => nil })}}
      it 'Does not create the congress' do
        lambda {post :create, params}.should_not change(Congress, :count)
      end
    end
  end
end
