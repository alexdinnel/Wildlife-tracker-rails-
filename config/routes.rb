WildlifeTracker2::Application.routes.draw do

  match('/', {:via => :get, :to => 'species#index'})
  match('species', {:via => :get, :to => 'species#index'})
  match('species/new', {:via => :get, :to => 'species#new'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id', {:via => [:patch, :put], :to => 'species#update'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})

  match('/', {:via => :get, :to => 'sighting#index'})
  match('sighting/new', {:via => :post, :to => 'sighting#new'})
  match('sighting', {:via => :get, :to => 'sighting#index'})
  match('sighting', {:via => :post, :to => 'sighting#create'})
  match('sighting/:id', {:via => :get, :to => 'sighting#show'})
end
