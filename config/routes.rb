Rails.application.routes.draw do
  get '/', to: 'home#index'
  
  get '/show', to: 'home#show'
  get '/error', to: 'home#error'

  get '/form', to: 'users#newform'
  post '/form', to: 'users#createform'

  get '/formtag', to: 'users#newformtag'
  post '/formtag', to: 'users#createformtag'

  get '/formfor', to: 'users#newformfor'
  post '/formfor', to: 'users#createformfor'
end