# Estados

parana = Estado.create!(nome: "Paraná")
santa_catarina = Estado.create!(nome: "Santa Catarina")
rio_grande_do_sul = Estado.create!(nome: "Rio Grande do Sul")

# Cidades

class Cidade < ApplicationRecord
    belongs_to :estado
  
    validates :nome, presence: true
  end
  
  Cidade.create!(nome: "Curitiba", estado: Estado.find_by(nome: "Paraná"))
  Cidade.create!(nome: "Florianópolis", estado: Estado.find_by(nome: "Santa Catarina"))
  Cidade.create!(nome: "Porto Alegre", estado: Estado.find_by(nome: "Rio Grande do Sul"))
  