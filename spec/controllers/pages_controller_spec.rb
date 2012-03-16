require 'spec_helper'

describe PagesController do
 render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                :content => "Busybody lets customers find you | Home")
   end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
      			:content => "Busybody lets customers find you | Contact"
)
  end
end

  describe "GET 'about'" do
   it "should be successful" do
     get 'about'
     response.should be_success
   end  

   it "should have the right title" do
     get 'about'
     response.should have_selector("title",
      			:content => "Busybody lets customers find you | About")
   end
 end
end
