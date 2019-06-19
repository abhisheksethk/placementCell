Rails.application.routes.draw do
  resources :pastrecords
  resources :applies
	root 'welcome#home'
   get '/about',to:'welcome#about'
   get '/why',to:'welcome#why'
    resources :exams
    resources :jobs
      resources :students
    resources :companies
     get 'signup1', to: 'students#new'
     resources :students, except: [:new]
     get 'signup2', to: 'companies#new'
     resources :students, except: [:new]
     get 'login1', to: 'sessions#new'
     post 'login1', to: 'sessions#create'
     delete 'logout1', to: 'sessions#destroy'
     get 'login2', to: 'sessions1#new'
     post 'login2', to: 'sessions1#create'
     delete 'logout2', to: 'sessions1#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
