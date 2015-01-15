require 'rails_helper'

RSpec.describe GroupsController, :type => :controller do
  let(:valid_attributes) {
    { name: 'Fun Group' }
  }

  let(:invalid_attributes) {
    { name: ' ' }
  }

  describe "GET index" do
    it "assigns all groups as @groups" do
      group = Group.create! valid_attributes
      get :index, {}
      expect(assigns(:groups)).to eq([group])
    end
  end

  describe "GET show" do
    it "assigns the requested group as @group" do
      group = Group.create! valid_attributes
      get :show, {:id => group.to_param}
      expect(assigns(:group)).to eq(group)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Group" do
        expect {
          post :create, {:group => valid_attributes}
        }.to change(Group, :count).by(1)
      end

      it "assigns a newly created group as @group" do
        post :create, {:group => valid_attributes}
        expect(assigns(:group)).to be_a(Group)
        expect(assigns(:group)).to be_persisted
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved group as @group" do
        post :create, {:group => invalid_attributes}
        expect(assigns(:group)).to be_a_new(Group)
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        { name: 'Cool Group'}
      }

      it "updates the requested group" do
        group = Group.create! valid_attributes
        put :update, {:id => group.to_param, :group => new_attributes}
        group.reload
        expect(group.name).to eq('Cool Group')
      end

      it "assigns the requested group as @group" do
        group = Group.create! valid_attributes
        put :update, {:id => group.to_param, :group => valid_attributes}
        expect(assigns(:group)).to eq(group)
      end
    end

    describe "with invalid params" do
      it "assigns the group as @group" do
        group = Group.create! valid_attributes
        put :update, {:id => group.to_param, :group => invalid_attributes}
        expect(assigns(:group)).to eq(group)
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested group" do
      group = Group.create! valid_attributes
      expect {
        delete :destroy, {:id => group.to_param}
      }.to change(Group, :count).by(-1)
    end
  end
end
