Rails.application.routes.draw do
  root 'contacts#index'
  post 'contacts/filter' => 'contacts#filter'
  resources :contacts
end
