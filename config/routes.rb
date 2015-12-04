Selling::Engine.routes.draw do
  scope ':uuid' do
    resource :config
    resources :origins
    resources :operators
    resources :resources
    resources :resource_types
    resources :payment_types
    resources :tax_groups
    
    resource :charges
  end
  get ':uuid' => 'sales#index', as: :sale
  root 'sales#index'
end
