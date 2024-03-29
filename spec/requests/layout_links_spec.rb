require 'spec_helper'

describe "LayoutLinks" do
  
	it "should have a home page at '/'" do
		get '/'
		response.should have_selector("title", :content => "Home")
	end

	it "should have a contact page at '/contact'" do
		get '/contact'
		response.should have_selector("title", :content => "Contact")
	end

	it "should have an about page at '/about'" do
		get '/about'
		response.should have_selector("title", :content => "About")
	end

	it "should have a sign up page at '/signup'" do
		get '/signup'
		response.should have_selector("title", :content => "Sign Up")
	end
end
