require 'rails_helper'

RSpec.describe "subsubcategoria/new", type: :view do
  before(:each) do
    assign(:subsubcategorium, Subsubcategorium.new(
      :frequencia => "MyString",
      :ativo => false,
      :subcategoria => nil
    ))
  end

  it "renders new subsubcategorium form" do
    render

    assert_select "form[action=?][method=?]", subsubcategoria_path, "post" do

      assert_select "input#subsubcategorium_frequencia[name=?]", "subsubcategorium[frequencia]"

      assert_select "input#subsubcategorium_ativo[name=?]", "subsubcategorium[ativo]"

      assert_select "input#subsubcategorium_subcategoria_id[name=?]", "subsubcategorium[subcategoria_id]"
    end
  end
end
