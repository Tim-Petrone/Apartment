require 'rails_helper'

RSpec.describe "apartments/index", type: :view do
  before(:each) do
    assign(:apartments, [
      Apartment.create!(
        :address => "Address",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :postal_code => "Postal Code",
        :country => "Country",
        :manager_name => "Manager Name",
        :manager_number => "Manager Number",
        :hours => "Hours"
      ),
      Apartment.create!(
        :address => "Address",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :postal_code => "Postal Code",
        :country => "Country",
        :manager_name => "Manager Name",
        :manager_number => "Manager Number",
        :hours => "Hours"
      )
    ])
  end

  it "renders a list of apartments" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Manager Name".to_s, :count => 2
    assert_select "tr>td", :text => "Manager Number".to_s, :count => 2
    assert_select "tr>td", :text => "Hours".to_s, :count => 2
  end
end
