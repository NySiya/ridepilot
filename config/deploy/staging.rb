set :production

set :app_name, 'ridepilot'

server '188.166.227.111', user: 'deployer', roles: %w{app web db}
