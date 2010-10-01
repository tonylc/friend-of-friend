# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_friends_session',
  :secret      => 'd5e6392c2152d6fc3f7ae87b050f91167fce04c55828b41ccd8ecd3990b83c7390cdd0cca1979572d45960e52f812d564ec9c3245fef88286963019280058c35'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
