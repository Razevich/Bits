Rails.application.routes.draw do

  root to: "pages#index"

  get "faq", to: "pages#questions" #getting information for the site
  get "about", to: "pages#show" #about page for website

  devise_for :students, controllers: { sessions: "students/sessions", registrations: "students/registrations", omniauth_callbacks: "students/omniauth_callbacks" }
  devise_for :non_profits, controllers: { sessions: "non_profits/sessions",registrations: "non_profits/registrations" }

  resources :non_profits, only: [:index] do
    resources :projects
  end

  get "non_profits/:name", to: "non_profits#show", as: "non_profits_show"
  get "student", to: "studenst#index"
  get "student/:email", to: "students#show", as: "student_show"



end
