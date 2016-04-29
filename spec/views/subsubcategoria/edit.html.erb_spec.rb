require 'rails_helper'

RSpec.describe "subsubcategoria/edit", type: :view do
  before(:each) do
    @subsubcategorium = assign(:subsubcategorium, Subsubcategorium.create!(
      :frequencia => "MyString",
      :ativo => false,
      :subcategoria => nil
    ))
  end

  it "renders the edit subsubcategorium form" do
    render

    assert_select "form[action=?][method=?]", subsubcategorium_path(@subsubcategorium), "post" do

      assert_select "input#subsubcategorium_frequencia[name=?]", "subsubcategorium[frequencia]"

      assert_select "input#subsubcategorium_ativo[name=?]", "subsubcategorium[ativo]"

      assert_select "input#subsubcategorium_subcategoria_id[name=?]", "subsubcategorium[subcategoria_id]"
    end
  end
end
