Rails.application.routes.draw do
  mount_devise_token_auth_for "User", at: "api/v1/auth", skip: [:omniauth_callbacks]
  namespace :ap, constraints: { format: 'json'} do
    namespace :v1 do
      resources :articles, only: [:index, :show, :create]
      namespace :admin do
        resources :articles, only: [:create]
      end
    end
  end
end
