# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_notas_cesecom_session',
  :secret      => 'e953fdeb67266a7056f4d1f63eb560f09e76424892be736754413bc4508f6bb46c8971725b4a7cd7507348f6a83aa4466eb1b6f1a66afe76542e713fd19a9f7d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
