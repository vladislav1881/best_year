require 'spec_helper'

describe "offers/edit" do
  before(:each) do
    @offer = assign(:offer, stub_model(Offer,
      :offer_type => "MyString",
      :rooms => 1,
      :price => 1,
      :address => "MyText",
      :city => nil,
      :discribtion => "MyText",
      :floor => 1,
      :floors => 1
    ))
  end

  it "renders the edit offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", offer_path(@offer), "post" do
      assert_select "input#offer_offer_type[name=?]", "offer[offer_type]"
      assert_select "input#offer_rooms[name=?]", "offer[rooms]"
      assert_select "input#offer_price[name=?]", "offer[price]"
      assert_select "textarea#offer_address[name=?]", "offer[address]"
      assert_select "input#offer_city[name=?]", "offer[city]"
      assert_select "textarea#offer_discribtion[name=?]", "offer[discribtion]"
      assert_select "input#offer_floor[name=?]", "offer[floor]"
      assert_select "input#offer_floors[name=?]", "offer[floors]"
    end
  end
end
