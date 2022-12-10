Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # ユーザー一覧取得
  get "/users", to: "users#index"
  # ユーザー新規登録フォームを取得
  get "/users/new", to: "users#new", as: :new_user
  # ユーザー新規作成
  post "users", to: "users#create"
  # ユーザー詳細取得
  get "/users/:id", to: "users#show", as: :user
  # ユーザー編集フォームを取得
  get "/users/:id/edit", to: "users#edit", as: :edit_user
  # ユーザー情報更新
  patch "/users/:id", to: "users#update"
end
