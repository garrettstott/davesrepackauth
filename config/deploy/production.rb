set :stage, :production

# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
#role :app, %w{deploy@example.com}
#role :web, %w{prod-deploy@devgarden.io}
#role :db,  %w{deploy@example.com}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.

#TODO put in our servers here
server 'ip', user: 'useable', roles: %w{app db}, "DOMAIN_NAME": "taxzilla.com"

set :puma_threads, [0, 16]

set :linked_files, %w{config/secrets.yml .env}

# fetch(:default_env).merge!(rails_env: :production)
