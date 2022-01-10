Rails.application.routes.draw do

  resources :speeches
  resources :interventions
  resources :fact_interventions
  get 'voice_report/report'
  resources :elevators
  resources :columns
  resources :batteries
  resources :customers
  resources :addresses
  resources :leads
  resources :quotes
  resources :employees
  resources :building

  get '/maps', to:'maps#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  get 'home/index', to: 'home#index'


  root to: 'home#index'
 
  post 'home/index',to: 'home#index'

  get 'home/residential', to: 'home#residential'
  get 'home/commercial', to: 'home#commercial'
  get '/speak', to:'home#speak'
  get 'home/recognition', to: 'home#recognition'
  
  get 'get_building', to:'interventions#get_building'
  get 'get_battery', to:'interventions#get_battery'
  get 'get_column', to:'interventions#get_column'
  get 'get_elevator', to:'interventions#get_elevator'

end
