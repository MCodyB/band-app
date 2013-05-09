MusicApp::Application.routes.draw do
	resources :bands do
		resources :albums
	end

	resources :tracks
	resources :songs
	resources :artists

	root to: "bands#index"
end