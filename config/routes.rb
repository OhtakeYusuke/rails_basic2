Rails.application.routes.draw do
  root to: "posts#index"
  get "/posts/new", to: "posts#new"
  get "/posts/edit/:id", to: "posts#edit"
  post "/posts", to: "posts#create"
  patch "/posts/:id", to: "posts#update"
  delete "/posts/:id", to: "posts#destroy"
  get "/posts/:id", to: "posts#show"
end
