Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/subscribtion', to: 'subscription#new'
      patch '/subscribtion', to: 'subscription#update'
      get '/subscribtion', to: 'subscription#index'
    end
  end
end
