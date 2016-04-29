require "rails_helper"

RSpec.describe SubsubcategoriaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/subsubcategoria").to route_to("subsubcategoria#index")
    end

    it "routes to #new" do
      expect(:get => "/subsubcategoria/new").to route_to("subsubcategoria#new")
    end

    it "routes to #show" do
      expect(:get => "/subsubcategoria/1").to route_to("subsubcategoria#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/subsubcategoria/1/edit").to route_to("subsubcategoria#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/subsubcategoria").to route_to("subsubcategoria#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/subsubcategoria/1").to route_to("subsubcategoria#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/subsubcategoria/1").to route_to("subsubcategoria#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/subsubcategoria/1").to route_to("subsubcategoria#destroy", :id => "1")
    end

  end
end
