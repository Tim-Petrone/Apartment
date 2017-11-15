require 'rails_helper'

RSpec.describe "apartments/show", type: :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!(
      :address => "Address",
      :address2 => "Address2",
      :city => "City",
      :state => "State",
      :postal_code => "Postal Code",
      :country => "Country",
      :manager_name => "Manager Name",
      :manager_number => "Manager Number",
      :hours => "Hours"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Address2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Manager Name/)
    expect(rendered).to match(/Manager Number/)
    expect(rendered).to match(/Hours/)
  end
end
