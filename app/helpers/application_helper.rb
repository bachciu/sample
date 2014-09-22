module ApplicationHelper
  #Zwraca tytul strony
  def full_title(page_title)
  	base_title = "Ruby on Rails Tutorial Sample Apps"
  	if page_title.empty?
  		base_title
  	else
  		"#{base_title} | #{page_titles}"
  	end
  end
end
