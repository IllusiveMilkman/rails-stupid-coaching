Rails.application.routes.draw do
  # get '/ask'
  get 'ask', to: 'questions#ask', as: :ask
  # get '/answer'
  get 'answer', to: 'questions#answer', as: :answer

  root to: 'questions#ask'

  # Generic syntax:
  # verb 'path', to: 'controller#action', as: :route_name
end
