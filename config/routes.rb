ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  #map.root :controller => 'pages', :action => 'index'
  
  map.resources :user_sessions
  map.logout '/logout', :controller => 'user_sessions', :action => 'destroy'
  map.login '/login', :controller => 'user_sessions', :action => 'new'

  #Admin Routes
  map.admin_dashboard 'admin', :controller => 'admin/dashboard', :action => 'index'

  map.with_options :path_prefix => '/:locale/admin' do |locale|
    locale.namespace :admin do |admin|
      admin.resources :users
    end
  end
  

  map.namespace(:admin) do |admin|
    admin.resources :users
  end

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
