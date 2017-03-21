Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  get 'movies/:id/director' ,to: 'movies#same_director',:as => 'same_director'
  root :to => redirect('/movies')
end
