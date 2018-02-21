Rails.application.routes.draw do
   get '/' => 'trackers#index'

   get '/packages/new' => 'trackers#new'
   post '/packages' => 'trackers#create'

   get '/packages/:id' => 'trackers#show'

   delete '/packages/:id' => 'trackers#destroy'
end
