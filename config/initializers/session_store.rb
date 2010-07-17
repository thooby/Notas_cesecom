# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_notas_cesecom_session',
  :secret      => '60b6f32177d4b572124f87a3607d321b764079716bbae5d90592192458df8d62f10cbe18381cdadee8e03a402456252bb5e27c7c26fa86597dac9017b6c374bf'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
