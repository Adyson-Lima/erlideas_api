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

end