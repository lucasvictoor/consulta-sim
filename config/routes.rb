Rails.application.routes.draw do
  resources :pacientes
  resources :consultas
  root 'pacientes#index' #página inicial
end

