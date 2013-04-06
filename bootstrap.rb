require 'rubygems'  
require 'sinatra'

#redirects all traffic to www subdomain
# config.middleware.use Rack::WWW

get '/' do  
  "Hello, World!"  
end