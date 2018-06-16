require 'rubygems'
require 'mechanize'

agent = Mechanize.new

page = agent.get('http://logins.daum.net/accounts/loginform.do?nil_profile=login&url=https://www.daum.net')

page.links.each do |link|
  link.text
end
