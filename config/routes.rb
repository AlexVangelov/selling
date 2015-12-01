Selling::Engine.routes.draw do
  scope ':uuid' do
    resource :config
    resources :origins
    resources :operators
    resources :resources
    resources :payment_types
  end
  get ':uuid' => 'sales#index', as: :sale
  root 'sales#index'
end
