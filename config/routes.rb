# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'web/board#show'

  scope module: :web do
    resource :board, only: :show
    resource :session, only: :new
    resource :session, only: %i[new create destroy]
    resources :developers, only: %i[new create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
