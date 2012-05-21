Rails.application.routes.draw do
  get '/page_caching_info', :to => 'page_caching_info#index'

  match '/t/p/:page/*id' => 'taxons#show', :as => :nested_taxons
end
