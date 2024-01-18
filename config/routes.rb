Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # Define a rota para a página de cidades
  get "/cidades", to: "cidades#index"

  # Define a rota para a atualização da tabela
  get "/cidades/update_table", to: "cidades#update_table"

  # Define a rota raiz (root) para a página de cidades
  root "cidades#index"
end
