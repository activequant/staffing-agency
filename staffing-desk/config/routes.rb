Rails.application.routes.draw do
  resources :position_statuses
  resources :proposal_statuses
  get 'welcome/index'

  resources :contacts, :resources, :positions, :propositions
  # :resources, :opportunities
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
