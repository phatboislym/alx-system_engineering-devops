# Installs an Nginx server using puppet
# Requirements:
# nginx should be listening on port 80
# when querying Nginx at its root / with a GET request (requesting a page)
#+ using curl, it must return a page that contains the string Hello World!
# the redirection must be a “301 Moved Permanently”

exec {'install':
  provider => shell,
  command  => 'sudo apt-get -y update ; sudo apt-get -y install nginx ; echo "Hello World!" | sudo tee -a /var/www/html/index.nginx-debian.html ; sudo sed -i "s/server_name _;/server_name _;\n\trewrite ^\/redirect_me https://www.nginx.com/products/nginx-management-suite/ permanent;/" /etc/nginx/sites-available/default ; sudo service nginx start',
}
