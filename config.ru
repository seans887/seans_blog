require 'rack-www'

#redirects all traffic to www subdomain
config.middleware.use Rack::WWW