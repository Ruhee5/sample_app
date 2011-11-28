module ApplicationHelper
  
  # Return a title on a per-page basis.
  def title
    base_title = "Salaam World App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  
  def takbir
    x = "Takbir! ---  "
    3.times { x += "Allahu Akbar!! "}
    x
  end
  
  
  #Ex 5.5.1
  def logo
    image_tag("salaamlogo.png", :alt => "Salaam App", :class => "round")
  end
  
end
