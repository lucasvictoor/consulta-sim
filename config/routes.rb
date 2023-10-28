Rails.application.routes.draw do
  resources :pacientes
  resources :consultas
  resources :medicos
  root 'pacientes#index' #página inicial
end

