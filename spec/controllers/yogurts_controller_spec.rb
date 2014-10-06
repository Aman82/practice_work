require 'rails_helper'

RSpec.describe YogurtsController, :type => :controller do


  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "returns a collection of yogurts" do
      get :index
      @yogurts = assigns(:yogurts)
      expect(@yogurts).to match_array(Yogurt.all)
    end
    it "any of  the yogurts in a collection should be a Yogurt" do
      get :index
      @yogurts = assigns(:yogurts)
      expect(@yogurts.sample).to be_a(Yogurt)
    end
  end

  describe "GET show" do
    it "should return a Yogurt" do
      get :show, id:1      # Yogurt.all.first  Yogurt.first.id
      @yogurt = assigns(:yogurt)
      expect(@yogurt).to be_a(Yogurt)
    end
    it "raises an error if Yogurt with an id is 0 or doesnot exist" do
    expect {get :show, id: 0}.to raise_error
    end
  end



end
