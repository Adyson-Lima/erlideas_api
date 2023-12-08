require 'rails_helper'

RSpec.describe Api::V1::IdeasController, type: :controller do

  before{@idea = Idea.create(name: 'supervisor', description: 'monitor de erros')}

  describe 'GET /api/v1/ideas' do
    it 'Consegue listar todas as ideas e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/ideas/id' do
    it 'Consegue listar um idea especifico e retornar status 200?' do
      get :show, params: {id: @idea.id}
      expect(response.body).to include_json(id: @idea.id)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/ideas' do
    it 'Consegue criar um idea e retornar status 201?' do
      post :create, params: {idea: {name: 'process', description: 'semelhante a um objeto'}, format: :json}
      expect(response.body).to include_json(name: 'process')
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/ideas/id' do
    it 'Consegue atualizar um idea e retornar status 200?' do
      idea = Idea.last
      patch :update, params: {idea: {name: 'guards', description: 'analise logica'}, id: idea.id}
      expect(response.body).to include_json(name: 'guards')
      expect(response).to have_http_status(200)
    end
  end

end