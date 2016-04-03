Rails.application.routes.draw do
  resources :players, except: [:new, :edit]
  root 'clubs#index'
  resources :clubs, except: [:new, :edit]
  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
  # You can have the root of your site routed with "root"
  # root 'welcome#index'
end
