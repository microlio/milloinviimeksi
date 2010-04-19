# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_milloinviimeksi_session',
  :secret      => '3080c0e9ded6469f687de8a82e6c0c5690dc122d9ddd86c76c7eee485d5a4e7eb31a516088ed372f39dda301f782df7c28b6bca60f1306d37988a262bf916791'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
