Rails.application.routes.draw do
<<<<<<< HEAD
  root 'pages#home'
=======
>>>>>>> 087a17a... added paperclip
  devise_for :users,
              path:'',
              path_names: {sign_in: 'login', sign_out:'logout', edit: 'profile', sign_up:'registration'},
              controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations' }


    resources :users, only: [:show] 
    resources :rooms, except: [:edit] do
      member do
        get 'listing'
        get 'pricing'
        get 'description'
        get 'photo_upload'
        get 'amenities'
        get 'location'
      end
<<<<<<< HEAD
      resources :photos, only:[:create, :destroy]
=======
      resources :photos, only: [:create, :destroy]
>>>>>>> 087a17a... added paperclip
    end
end
