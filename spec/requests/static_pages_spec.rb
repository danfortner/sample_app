require 'spec_helper'

describe "StaticPages" do

	describe "Home Page" do
		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Sample App') 
		end
		it "should have the right title" do 
			visit '/static_pages/home'
			page.should have_selector('title',
				:text => "Ruby on Rails Tutorial Sample App | Home")
		end
	end
	describe "About page" do
		it "should have the content 'About us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text =>'About us') 
		end
		it "should have the right title" do 
			visit '/static_pages/about'
			page.should have_selector('title',
				:text => "Ruby on Rails Tutorial Sample App | About us")
		end
	end
	describe "Help Page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text =>'Help') 
		end
		it "should have the right title" do 
			visit '/static_pages/help'
			page.should have_selector('title',
				:text => "Ruby on Rails Tutorial Sample App | HELP")
		end
	end
		describe "Contact" do
		it "should have the content 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text =>'Contact') 
		end
		it "should have the right title on Contact page" do 
			visit '/static_pages/contact'
			page.should have_selector('title',
				:text => "Ruby on Rails Tutorial Sample App | Contact")
		end
	end

end
