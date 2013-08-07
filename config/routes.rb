WdiBackboneDemo::Application.routes.draw do
  resources :questions


  root :to => "pages#index"
end
