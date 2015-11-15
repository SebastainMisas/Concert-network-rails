Rails.application.routes.draw do
  get "/" => "site#index"
  get "/contact" => "site#contact"

  resources :concerts do
  resources :comments
  end
end
