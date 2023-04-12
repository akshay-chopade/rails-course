Rails.application.routes.draw do
  root "main#index"

  
  match 'about', to: "main#about", via: :get
  match 'hello', to: "main#hello", via: :get
  
  get 'main/index'
  
  resources :tasks do
    member do
      get :delete
    end
  end
  resources :categories do
    member do
      get :delete
    end
  end

  
  
  
  
  
  
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/edit'
  # get 'categories/delete'










# ====                                                                            tasks#index
                              #            POST   /tasks(.:format)                                        tasks#create
                              #   new_task GET    /tasks/new(.:format)                                    tasks#new
                              #  edit_task GET    /tasks/:id/edit(.:format)                               tasks#edit
                              #       task GET    /tasks/:id(.:format)                                    tasks#show
                           #            PATCH  /tasks/:id(.:format)                                    tasks#update
                              #            PUT    /tasks/:id(.:format)                                    tasks#update
                              #            DELETE /tasks/:id(.:format)   

  # get 'tasks/index'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/show'
  # get 'tasks/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
