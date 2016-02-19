Rails.application.routes.draw do

  root to: "pages#index"

  get "about", to: "pages#show" #about page for website

  devise_for :students, controllers: { sessions: "students/sessions", registrations: "students/registrations" }
  devise_for :non_profits, controllers: { sessions: "non_profits/sessions",registrations: "non_profits/registrations" }

  resources :students, only: [:show, :index]

  resources :non_profits, only: [:show, :index] do
    resources :projects
  end

end
