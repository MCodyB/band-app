MusicApp::Application.routes.draw do
	resources :bands do
		resources :albums
	end

	root to: "bands#index"
end