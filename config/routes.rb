Rails.application.routes.draw do
  get 'welcome/index'
  resources :pacientes
  resources :consultas
  resources :medicos

  resources :medicos do
    get 'consultas', on: :member
  end

  resources :pacientes do
    resource :endereco, only: [:new, :create, :edit, :update, :destroy]
    resources :consultas, only: [:index, :new, :create, :edit, :update, :destroy]
  end

  resources :medicos do
    resources :consultas, only: [:index]
  end

  root 'welcome#index' #página inicial
end



