Rails.application.routes.draw do
    # get 'cats/index'
    # get 'cats/new'
    # get 'cats/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cats
end
