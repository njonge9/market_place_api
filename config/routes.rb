Rails.application.routes.draw do
  #Api defination
  namespace :api, default: { format: :json } do
    namespace :v1 do
      resources :users, only: %i[show create update destroy]
    end
  end
end
