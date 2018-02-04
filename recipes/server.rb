package 'httpd' do
  action :install
end

#cookbook_file '/var/www/html/index.html' do
#  source "index.html"
#end

remote_file '/var/www/html/lion.jpg' do
  source "http://animals.sandiegozoo.org/sites/default/files/2016-09/animals_hero_lions_0.jpg"
end

template '/var/www/html/index.html' do
  action :create  
  content "index.html.erb"
end

service 'httpd' do
  action [ :enable, :start]
end
