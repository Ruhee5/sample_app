class PagesController < ApplicationController
  def home
    @title = "Home Salaam"
  end

  def contact
    @title = "Contact Salaam"
  end


  def about
    @title = "About Salaam"
  end
  
  def help
    @title = "Help Super Salaam"
  end
end
