package 'httpd'

template '/var/www/html/index.html' do
  action :create  
  content "index.html.erb"
end

service 'httpd' do
  action [ :enable, :start]
end
