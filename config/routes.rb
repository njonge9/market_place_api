Rails.application.routes.draw do
  #Api defination
  namespace :api, default: { format: :json } do
    namespace :v1 do
      resources :users, only:[:show]
    end
  end
end
