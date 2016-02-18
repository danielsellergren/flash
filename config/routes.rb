Rails.application.routes.draw do
  # Home with randomizer
  root 'home#index'

  # Only index and show to prevent unwanted changes
  resources :cards, only: [:index, :show]
end
