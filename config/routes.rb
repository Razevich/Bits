Rails.application.routes.draw do
  devise_for :students, controllers: { sessions: "students/sessions", registrations: "students/registrations" }
  devise_for :non_profits, controllers: { sessions: "non_profits/sessions",registrations: "non_profits/registrations" }

end
