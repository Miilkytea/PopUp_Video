Rails.application.routes.draw do
     
    root 'bands#index' 

    resources :bands

    resources :music_videos


end
