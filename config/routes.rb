# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :assits
  resources :surveys
  root 'assits#dash_board'
  get 'edit', to: 'assits#edit'
end
