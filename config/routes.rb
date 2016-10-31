Rails.application.routes.draw do
  get '/' => 'students#index'
  get '/students/:id' => 'students#show'

  get '/pdfs' => 'pdfs#index'
end
