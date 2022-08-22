# frozen_string_literal: true

Rails.application.routes.draw do
  resources :restaurants

  resources :restaurants do
    resources :items
  end
  get 'orders/index'
  get 'orders/update'
  get 'orders/create'
  post 'orders', to: 'orders#destroy'

  resources :categories do
    resources :items
  end


  get '/cart', to: 'cart#index'
  resources :categories
  resources :items
  resources :categorizations

  resources :orders
  resources :order_items

  get 'home/index'
  root 'items#index'
  get 'home/about'
  post 'items/:id', to: 'items#toggle_status'
  post 'cart' => 'cart#checkout'
  post 'orders/change_status' => 'orders#change_status'


  devise_scope :user do
    get 'users/registrations/index' => 'users/registrations#index'
    post 'users/registrations/make_admin' => 'users/registrations#make_admin'
  end

  devise_for :users,
             controllers: { sessions: 'users/sessions', registrations: 'users/registrations',
                            passwords: 'users/passwords' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
