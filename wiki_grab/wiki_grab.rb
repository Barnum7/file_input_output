require 'rubygems'
require 'rest-client'

wiki_url = "https://en.wikipedia.org/wiki/Ruby_(programming_language)"
wiki_local_filename = "wiki_page.txt"

File.open(wiki_local_filename, "w") do |file|
	file.write(RestClient.get(wiki_url))
end