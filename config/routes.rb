Rails.application.routes.draw do
  get 'jokes/index'
  root "jokes#index"
end
