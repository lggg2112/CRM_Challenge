# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'customers#index'

  get 'alphabetized' => 'customers#alphabetized', as: 'alphabetized'
  get 'missing_email' => 'customers#missing_email', as: 'missing_email'
end
