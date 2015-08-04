Rails.application.routes.draw do
  resources :candidates
  resources :attributes
  resources :scorecards

  root 'scorecards#index'
  post '/compare' => 'candidates#compare'
end
