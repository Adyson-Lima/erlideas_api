require 'rails_helper'

RSpec.describe Idea, type: :model do

  before{@idea = Idea.new}

  describe 'Testes de preenchimento do model Idea' do

    it 'name consegue ser preenchido?' do
      @idea.name = 'bif'
      expect(@idea.name).to eq('bif')
    end

    it 'description consegue ser preenchido?' do
      @idea.description = ''
      expect(@idea.description).to eq('built in function')
    end

  end

end