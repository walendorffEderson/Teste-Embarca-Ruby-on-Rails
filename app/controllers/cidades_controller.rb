# app/controllers/cidades_controller.rb
class CidadesController < ApplicationController
  def index
    puts "Params: #{params.inspect}"
    @cidades = Cidade.joins(:estado).where(
      estados: { nome: params[:estado] },
      nome: params[:nome]
    )
    puts "Cidades encontradas: #{@cidades.inspect}"
    
    respond_to do |format|
      format.html # renderiza a visualização HTML padrão
      format.js   # renderiza a visualização JS (updateTable.js.erb)
    end
  end

  def update_table
    respond_to do |format|
      format.js { render partial: "cidades/update_table" }
    end
  end
end
