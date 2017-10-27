Rails.application.routes.draw do
  resources :event_type,
            :locations,
            :users

  resources :event_users

  get '/event_users/user/:user_id/' => 'event_users#search_by_user'
  get '/event_users/event/:event_id' => 'event_users#search_by_event'

  resources :events

  get '/events/type/:event_type_id' => 'events#search_by_type' 
  get '/events/location/location_id' => 'events#search_by_location'
  get '/events/user/:user_id' => 'events#search_by_user'

  resources :comments

  get '/comments/user/:user_id' => 'comments#search_by_user'
  get '/comments/event/:event_id' => 'comments#search_by_event'

  resources :notifications

  get '/notifications/user/:user_id' => 'notifications#search_by_user'
end
