require 'spec_helper'

describe StaticPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'year_plan'" do
    it "returns http success" do
      get 'year_plan'
      response.should be_success
    end
  end

end
