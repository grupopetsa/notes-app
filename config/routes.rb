Rails.application.routes.draw do
  resources :notes
  root to: redirect("notes")
end
