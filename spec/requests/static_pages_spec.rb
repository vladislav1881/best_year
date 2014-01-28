require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    
    it "should have content BestYear" do 
      visit '/static_pages/home'
      expect(page).to have_content('BestYear')
    end 

    it "should have the base title" do
      visit '/static_pages/home' 
      expect(page).to have_title('BestYear')
    end	

    it "should not have a custom page title" do 
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
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
