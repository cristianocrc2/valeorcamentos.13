require 'rails_helper'

RSpec.describe "categoria/index", type: :view do
  before(:each) do
    assign(:categoria, [
      Categorium.create!(
        :categoria => "Categoria",
        :ativo => false,
        :nicho => nil
      ),
      Categorium.create!(
        :categoria => "Categoria",
        :ativo => false,
        :nicho => nil
      )
    ])
  end

  it "renders a list of categoria" do
    render
    assert_select "tr>td", :text => "Categoria".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
