Rails.application.routes.draw do
  resources :notifications, :comments, :event_users

  get '/event_users/by_user/:user_id/' => 'event_users#search_by_user'

  resources :event_types do
  	resources :events, controller: 'event_types_events'
  end

  resources :locations do
  	resources :events, controller: 'locations_events'
  end

  resources :events do
  	resources :comments, controller: 'events_comments'
  end

  resources :users do
  	resources :notifications, controller: 'users_notifications'
    resources :events, controller: 'users_events'
  end
end
