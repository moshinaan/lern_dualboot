# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'web/boards#show'

  scope module: :web do
    resource :session, only: %i[new create destroy]
    resource :boards, only: :show
    resources :developers, only: %i[new create]
  end
end
