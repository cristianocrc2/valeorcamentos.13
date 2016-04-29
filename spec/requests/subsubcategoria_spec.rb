require 'rails_helper'

RSpec.describe "Subsubcategoria", type: :request do
  describe "GET /subsubcategoria" do
    it "works! (now write some real specs)" do
      get subsubcategoria_path
      expect(response).to have_http_status(200)
    end
  end
end
