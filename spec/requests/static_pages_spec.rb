require 'spec_helper'

describe "StaticPages" do
  
  subject { page }
  
  describe "Home page" do
  	before { visit root_path }

  	it { should have_content('BestYear') }
  	it { should have_title(full_title('')) }
  	it { should_not have_title(full_title('Home')) }
  end

  describe "YearPlan page" do 
  	before { visit plan_path }

  	it { should have_content('One-page plan') }
  	it { should have_title(full_title('Plan')) }
  end
end
