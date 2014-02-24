require 'spec_helper'

describe "offers/index" do
  before(:each) do
    assign(:offers, [
      stub_model(Offer,
        :offer_type => "Offer Type",
        :rooms => 1,
        :price => 2,
        :address => "MyText",
        :city => nil,
        :discribtion => "MyText",
        :floor => 3,
        :floors => 4
      ),
      stub_model(Offer,
        :offer_type => "Offer Type",
        :rooms => 1,
        :price => 2,
        :address => "MyText",
        :city => nil,
        :discribtion => "MyText",
        :floor => 3,
        :floors => 4
      )
    ])
  end

  it "renders a list of offers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Offer Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
