WdiBackboneDemo::Application.routes.draw do
  scope "api" do
    resources :questions
  end

  root :to => "pages#index"
end
