require 'spec_helper'

describe PagesController do
  render_views

  #Excersice Ch3,2. Consolidate the base title
  before(:each) do
    @base_title = "Salaam World App" + " | "
  end
  
  
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  
    #page title test | Home
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                      :content => @base_title + "Home")
    end
  end
  

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have a title" do
        get 'contact'
        response.should have_selector("title",
                        :content => @base_title + "Contact")
    end
    
  end
  
  #My first TDD Red test!
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have a title" do
        get 'about'
        response.should have_selector("title",
                        :content => @base_title + "About")
    end
    
  end
  
  
  #excercise Ch3,1
  describe "GET 'help'" do
    it "should be successful" do
        get 'help'
        response.should be_success
    end
    
    it "should have a title" do
        get 'help'
        response.should have_selector("title",
                        :content => @base_title + "Help")
    end
  end
  
  
end
