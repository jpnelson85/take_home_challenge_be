Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/subscribe', to: 'subscription#new'
      patch '/subscribe', to: 'subscription#update'
      get '/subscribe', to: 'subscription#index'
    end
  end
end
