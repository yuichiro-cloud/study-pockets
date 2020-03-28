Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  devise_scope :user do
    get '/users/sign_out' => 'users/sessions#destroy'
  end
  root 'studies#index'
  resources :studies, only:[:show, :new, :create] do
    member do
      get :tag_click
    end
    collection do
      patch :like, defaults: { format: 'json' }
      delete :unlike, defaults: { format: 'json' }
    end
  end
end
