# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_js_dom_fixtures_session',
  :secret      => 'd891a1647e826d1ba3f2096f95637510780f792ad1b78a8a3bf519a98bf1baaf4c1ab31f7ac3f37495bdcb298206d834673ade389c4167bd38bbcdb1a6edcc64'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
