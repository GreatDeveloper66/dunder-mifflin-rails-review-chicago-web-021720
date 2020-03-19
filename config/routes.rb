Rails.application.routes.draw do
  # Based on your controller actions, you could be more specific about which routes to draw here.
  resources :dogs#, only: [:index, :show]
  resources :employees#, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
