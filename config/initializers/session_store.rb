# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_js_dom_fixtures_session',
  :secret      => 'e21e4a0984f69f10c499927ce44cc7be6d39080c533caf0495634a2c4c720ff3b0358132db6fd34aef6a0c2eb2f5ad489e8e4b31159740dde0ceeea93646bbd4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
