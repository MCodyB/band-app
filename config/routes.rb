MusicApp::Application.routes.draw do
	resources :bands do
		resources :albums
	end

	resources :tracks

	root to: "bands#index"
end