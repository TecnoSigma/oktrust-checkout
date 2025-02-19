Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get 'registro',  to: 'checkouts#register'
  get 'pagamento', to: 'checkouts#payment'
  get 'acesso',    to: 'checkouts#access'
  get 'parabens',  to: 'checkouts#congratulations'

  post 'store_register', to: 'checkouts#store_register'
end
