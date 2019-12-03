Rails.application.routes.draw do

  root :to => "web/board#show"

  scope module: :web do
  	resource :session, only: [:new, :create, :destroy]
    resource :board, only: :show
  end
end

