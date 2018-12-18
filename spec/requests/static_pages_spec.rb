require 'rails_helper'
require 'spec_helper'

describe "Static pages" do

     subject{page}

  describe "Home page" do
     
     before {visit root_path}

    it {"should have the content 'Sample App'" }
    it {"should have the title 'Ruby on Rails Tutorial Sample App | Home'"}
     
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe "Contact" do

    it "should have the content 'Contact'" do
      visit '/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end