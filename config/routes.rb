Rails.application.routes.draw do
  root to: 'contacts#new'

  # Contact routes
  get '/contacts/new', to: 'contacts#new'
  post '/contacts', to: 'contacts#create'

  get '*all', to: 'application#index', constraints: lambda { |req|
    req.path.exclude? 'rails/active_storage'
  }
end
