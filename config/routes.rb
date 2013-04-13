TalkHub::Application.routes.draw do
  devise_for :users

  get "/posts" => "posts#index"
  get "/posts/new" => "posts#new", :as => "new_post"
  post "/posts" => "posts#create", :as => "posts"
  get "/posts/:post_id" => "posts#show", :as => "show_post"
  get "/posts/:post_id/edit" => "posts#edit", :as => "edit_post"
  put "/posts/:post_id" => "posts#update", :as => "post"

  root :to => "home#index"
end

