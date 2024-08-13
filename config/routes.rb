Rails.application.routes.draw do
  devise_for :users
  # get "/blog_post/new" , to: "blog_post#new"
  # get "/blog_post/:id" , to: "blog_post#show" , as: :blog_post
  # get "/blog_post/:id/edit" , to: "blog_post#edit"
  # patch "/blog_post/:id" , to: "blog_post#update"
  # delete "/blog_post/:id" , to: "blog_post#destroy"


  resources :blog_post
  post "/blog_posts" , to: "blog_post#create"

  root "blog_post#index"
end
