require 'rails_helper'

RSpec.describe "subsubcategoria/index", type: :view do
  before(:each) do
    assign(:subsubcategoria, [
      Subsubcategorium.create!(
        :frequencia => "Frequencia",
        :ativo => false,
        :subcategoria => nil
      ),
      Subsubcategorium.create!(
        :frequencia => "Frequencia",
        :ativo => false,
        :subcategoria => nil
      )
    ])
  end

  it "renders a list of subsubcategoria" do
    render
    assert_select "tr>td", :text => "Frequencia".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
