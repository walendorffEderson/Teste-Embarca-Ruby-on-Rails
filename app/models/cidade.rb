# app/models/cidade.rb
class Cidade < ApplicationRecord
    belongs_to :estado
end
  