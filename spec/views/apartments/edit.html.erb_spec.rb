require 'rails_helper'

RSpec.describe "apartments/edit", type: :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!(
      :address => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :postal_code => "MyString",
      :country => "MyString",
      :manager_name => "MyString",
      :manager_number => "MyString",
      :hours => "MyString"
    ))
  end

  it "renders the edit apartment form" do
    render

    assert_select "form[action=?][method=?]", apartment_path(@apartment), "post" do

      assert_select "input[name=?]", "apartment[address]"

      assert_select "input[name=?]", "apartment[address2]"

      assert_select "input[name=?]", "apartment[city]"

      assert_select "input[name=?]", "apartment[state]"

      assert_select "input[name=?]", "apartment[postal_code]"

      assert_select "input[name=?]", "apartment[country]"

      assert_select "input[name=?]", "apartment[manager_name]"

      assert_select "input[name=?]", "apartment[manager_number]"

      assert_select "input[name=?]", "apartment[hours]"
    end
  end
end
