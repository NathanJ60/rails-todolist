Rails.application.routes.draw do
  # ============================================
  # VERSION EXPLICITE (pour comprendre)
  # ============================================
  #
  # Voici ce que "resources :tasks" génère automatiquement :
  #
  # get    '/tasks',          to: 'tasks#index'    # Liste des tâches
  # post   '/tasks',          to: 'tasks#create'   # Créer une tâche
  # get    '/tasks/new',      to: 'tasks#new'      # Formulaire création
  # get    '/tasks/:id',      to: 'tasks#show'     # Voir une tâche
  # get    '/tasks/:id/edit', to: 'tasks#edit'     # Formulaire édition
  # patch  '/tasks/:id',      to: 'tasks#update'   # Mettre à jour
  # put    '/tasks/:id',      to: 'tasks#update'   # Mettre à jour (alias)
  # delete '/tasks/:id',      to: 'tasks#destroy'  # Supprimer
  #
  # ============================================
  # VERSION RAILS (raccourci) - fait la même chose :
  # ============================================
  resources :tasks do
    member do
      post :toggle  # Route custom : POST /tasks/:id/toggle → tasks#toggle
    end
  end

  # Page d'accueil
  root "tasks#index"  # GET / → tasks#index
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
