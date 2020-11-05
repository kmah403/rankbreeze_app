require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  mount Sidekiq::Web => '/sidekiq'
end
