Rails.application.routes.draw do
  resources :pacientes
  resources :consultas
  resources :medicos
  resources :medicos do
    get 'consultas', on: :member
  end
  root 'pacientes#index' #página inicial
end

