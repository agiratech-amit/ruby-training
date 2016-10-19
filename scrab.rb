require 'rubygems'
require 'mechanize'
class Google
  def search
    a = Mechanize.new 
  a.get('http://google.com/') do |page|
  search_result = page.form_with(:name => 'f') do |search|
  search.q = 'Agira Tech'
  end.submit

  puts search_result.title
  puts "\n"
  search_result.links.each do |link|
    puts link.text
    puts "\n"
    puts link.uri
    puts "\n"

    
  end
end


end
end
g=Google.new
g.search