require 'spec_helper'

describe "offers/new" do
  before(:each) do
    assign(:offer, stub_model(Offer,
      :offer_type => "MyString",
      :rooms => 1,
      :price => 1,
      :address => "MyText",
      :city => nil,
      :discribtion => "MyText",
      :floor => 1,
      :floors => 1
    ).as_new_record)
  end

  it "renders new offer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", offers_path, "post" do
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
