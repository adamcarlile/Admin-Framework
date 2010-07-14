# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_police-hatecrime_session',
  :secret      => '6afcf35229e7b2d91c08d75d203c48002e065f3ca4152bb8d4ed53904539c4ec70c9af51a645c4dea2649c79598117f72a447369b819fa14d2efb98ba84c5b62'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
