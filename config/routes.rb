Rails.application.routes.draw do
	get '/', to: 'welcome#index', as: 'index'
	get 'profil/:id', to:'profil#perso', as: 'profil'
  get 'welcome/:id', to:'welcome#show', as: 'welcome'
  get 'static_pages/team'
  get 'static_pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
