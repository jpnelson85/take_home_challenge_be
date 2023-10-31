Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/subscribe', to: 'subscription#new'
      delete '/subscribe', to: 'subscription#cancel'
      get '/subscribe', to: 'subscription#show'
    end
  end
end
