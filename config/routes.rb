BramblesV2::Application.routes.draw do

  devise_for :users

  root :to => 'home#index'
  get ":topic", to: "topics#show"
  get ":topic/:article", to: "articles#show"

end