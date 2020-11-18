if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_stella', domain: 'stella-frontend'
  else
    Rails.application.config.session_store :cookie_store, key: '_stella' 
  end