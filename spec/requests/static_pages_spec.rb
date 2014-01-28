require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    
    it "should have content BestYear" do 
      visit '/static_pages/home'
      expect(page).to have_content('BestYear')
    end 

    it "should have the title Home" do
      visit '/static_pages/home' 
      expect(page).to have_title('Home')
    end	
  end

  describe "YearPlan page" do 

    it "should have content One-page plan" do 
      visit '/static_pages/year_plan'
      expect(page).to have_content('One-page plan')
    end 

    it "should have the title Plan" do
      visit '/static_pages/year_plan' 
      expect(page).to have_title('Plan')
    end	
  end
end
