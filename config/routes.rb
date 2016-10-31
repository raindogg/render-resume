Rails.application.routes.draw do
  get '/' => 'students#index'
  get '/students/1' => 'students#show'

  get '/pdfs' => 'pdfs#index'
end
