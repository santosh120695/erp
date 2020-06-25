Rails.application.routes.draw do
  resources :raw_materials
  resources :cost_sheet_items
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :stock_levels
  resources :state_transitions
  resources :order_details
  resources :pis
  resources :customers
  resources :cost_sheets
  resources :raw_material_prices
  resources :products
  devise_for :users
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
