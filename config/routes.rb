Rails.application.routes.draw do
  jsonapi_resources :categories
  jsonapi_resources :products
end
