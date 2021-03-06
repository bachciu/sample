require 'spec_helper'

describe "Static pages" do

	describe "Home Pages" do
		
		it "Should have the content 'Sample App'" do
		visit '/static_pages/home'
			expect(page).to have_content('Sample App')
		end

		it "Should have the base title" do
			visit '/static_pages/home'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App")
		end

		it "Should not have a custom page title"
		visit '/static_pages/home'
		expect(page).not_to have_title('| Home')

	end

	describe "Help page" do
		it "Should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end
	end

	describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end

end