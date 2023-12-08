require 'rails_helper'

RSpec.describe Idea, type: :model do

  before{@idea = Idea.new}

  describe 'Testes de preenchimento do model Idea' do

    it 'name consegue ser preenchido?' do
      @idea.name = 'bif'
      expect(@idea.name).to eq('bif')
    end

    it 'description consegue ser preenchido?' do
      @idea.description = 'built in function'
      expect(@idea.description).to eq('built in function')
    end

  end

  describe 'Testes de validação do model Idea' do

    it 'idea valido com campos obrigatorios preenchidos?' do
      @idea.name = 'atom'
      @idea.description = 'texto puro'
      expect(@idea).to be_valid
    end

    it 'idea invalido com campos obrigatorios não preenchidos?' do
      idea = Idea.new
      expect(idea).to be_invalid
    end

  end

end