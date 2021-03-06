module ApplicationHelper
    
  def full_title(page_name = "")
    base_title = "TaskApp"
    if page_name.empty?
      base_title
    else
      page_name + " | " + base_title
    end
  end
  
  require "uri"
  def text_url_to_link(text)
      URI.extract(text, ["http", "https"]).uniq.each do |url|
      text.description.gsub!(url, "#{url}")
  end
   text
  end
end
