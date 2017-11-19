Rails.application.routes.draw do
  resources :event_types,
            :locations
  
  resources :users
  post '/users/login' => 'users#login'
  get '/users/email/:email' => 'users#search_by_email'
  
  resources :event_users

  get '/event_users/user/:user_id/' => 'event_users#search_by_user'
  get '/event_users/event/:event_id' => 'event_users#search_by_event'

  resources :events

  get '/events/type/:event_type_id' => 'events#search_by_type'
  get '/events/user/:user_id' => 'events#search_by_user'
  get '/events/followed/:user_id' => 'events#get_followed_events'
  get '/events/name/:event_name' => 'events#search_by_name'
  get '/events/date/:event_date' => 'events#search_by_date'
  get '/events/location/:event_location' => 'events#search_by_location'

  resources :comments

  get '/comments/user/:user_id' => 'comments#search_by_user'
  get '/comments/event/:event_id' => 'comments#search_by_event'

  resources :notifications

  get '/notifications/user/:user_id' => 'notifications#search_by_user'
end
