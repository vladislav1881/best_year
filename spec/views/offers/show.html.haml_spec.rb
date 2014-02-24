require 'spec_helper'

describe "offers/show" do
  before(:each) do
    @offer = assign(:offer, stub_model(Offer,
      :offer_type => "Offer Type",
      :rooms => 1,
      :price => 2,
      :address => "MyText",
      :city => nil,
      :discribtion => "MyText",
      :floor => 3,
      :floors => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Offer Type/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(/MyText/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
