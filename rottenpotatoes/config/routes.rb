Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  
  match 'movie/same_director/:id' => 'movies#same_director', :via =>[:get], :as => :movie_same_director
end
