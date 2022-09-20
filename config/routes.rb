# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :assits
  root 'assits#control_pannel'
  get 'edit', to: 'assits#edit'
end