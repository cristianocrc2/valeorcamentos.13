require 'rails_helper'

RSpec.describe "subsubcategoria/show", type: :view do
  before(:each) do
    @subsubcategorium = assign(:subsubcategorium, Subsubcategorium.create!(
      :frequencia => "Frequencia",
      :ativo => false,
      :subcategoria => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Frequencia/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
