Rails.application.routes.draw do
  scope module: :api do
    resources :animals
  end
end
