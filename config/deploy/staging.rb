set :stage, :production
#TODO get a staging box
server 'ip-fill this in', user: 'useable', roles: [:app, :web,  :db], primary: true, "DOMAIN_NAME": "staging.taxzilla.com"
set :linked_files, %w{config/secrets.yml .env}
