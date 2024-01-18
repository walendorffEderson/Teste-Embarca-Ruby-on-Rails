require 'rails_helper'

RSpec.describe CidadesController, type: :controller do
  describe 'GET #index' do
    context 'quando o estado é informado' do
      it 'deve retornar as cidades do estado informado' do
        get :index, params: { estado: 'Paraná' }

        expect(assigns(:cidades)).to eq(
          [Cidade.find_by(nome: 'Curitiba')]
        )
      end
    end

    context 'quando o nome é informado' do
      it 'deve retornar as cidades com o nome informado' do
        get :index, params: { nome: 'Curitiba' }

        expect(assigns(:cidades)).to eq(
          [Cidade.find_by(nome: 'Curitiba')]
        )
      end
    end

    context 'quando o estado e o nome são informados' do
      it 'deve retornar as cidades do estado informado com o nome informado' do
        get :index, params: { estado: 'Paraná', nome: 'Curitiba' }

        expect(assigns(:cidades)).to eq(
          [Cidade.find_by(nome: 'Curitiba')]
        )
      end
    end
  end
end
