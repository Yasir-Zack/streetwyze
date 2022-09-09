# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'substances/index'
  # get 'substances/new'
  # get 'substances/create'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :substances
end
