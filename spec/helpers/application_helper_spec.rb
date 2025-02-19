require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#countries' do
    it 'returns countries' do
      result = helper.countries

      expected_result = [['Brasil', 'BR']]

      expect(result).to eq(expected_result)
    end
  end

  describe '#states' do
    it 'returns states' do
      result = helper.states

      expected_result = [['Acre', 'AC'],
        ['Alagoas', 'AL'],
        ['Amapá', 'AP'],
        ['Amazonas', 'AM'],
        ['Bahia', 'BA'],
        ['Ceará', 'CE'],
        ['Distrito Federal', 'DF'],
        ['Espírito Santo', 'ES'],
        ['Goiás', 'GO'],
        ['Maranhão', 'MA'],
        ['Mato Grosso', 'MT'],
        ['Mato Grosso', 'MS'],
        ['Minas Gerais', 'MG'],
        ['Pará', 'PA'],
        ['Paraíba', 'PB'],
        ['Paraná', 'PR'],
        ['Pernambuco', 'PE'],
        ['Piauí', 'PI'],
        ['Rio de Janeiro', 'RJ'],
        ['Rio Grande do Norte', 'RN'],
        ['Rio Grande do Sul', 'RS'],
        ['Rondônia', 'RO'],
        ['Roraima', 'RR'],
        ['Santa Catarina', 'SC'],
        ['São Paulo', 'SP'],
        ['Sergipe', 'SE'],
        ['Tocantins', 'TO']]

      expect(result).to eq(expected_result)
    end
  end

  describe '#steps' do
    it 'returns default steps when no pass params' do
      result = helper.steps

      expected_result = { register: { name: 'register', status: 'inactive', step: '1' },
        access: { name: 'access', status: 'inactive', step: '2' },
        payment: { name: 'payment', status: 'inactive', step: '3' },
        conference: { name: 'conference', status: 'inactive', step: '4' },
        congratulations: { name: 'congratulations', status: 'inactive', step: '5' } }

      expect(result).to eq(expected_result)
    end

    it 'returns register steps when pass register param' do
      result = helper.steps('register')

      expected_result = { register: { name: 'register', status: 'active', step: '1' },
        access: { name: 'access', status: 'inactive', step: '2' },
        payment: { name: 'payment', status: 'inactive', step: '3' },
        conference: { name: 'conference', status: 'inactive', step: '4' },
        congratulations: { name: 'congratulations', status: 'inactive', step: '5' } }

      expect(result).to eq(expected_result)
    end

    it 'returns access steps when pass access param' do
      result = helper.steps('access')

      expected_result = { register: { name: 'register', status: 'active', step: '1' },
        access: { name: 'access', status: 'active', step: '2' },
        payment: { name: 'payment', status: 'inactive', step: '3' },
        conference: { name: 'conference', status: 'inactive', step: '4' },
        congratulations: { name: 'congratulations', status: 'inactive', step: '5' } }

      expect(result).to eq(expected_result)
    end

    it 'returns payment steps when pass payment param' do
      result = helper.steps('payment')

      expected_result = { register: { name: 'register', status: 'active', step: '1' },
        access: { name: 'access', status: 'active', step: '2' },
        payment: { name: 'payment', status: 'active', step: '3' },
        conference: { name: 'conference', status: 'inactive', step: '4' },
        congratulations: { name: 'congratulations', status: 'inactive', step: '5' } }

      expect(result).to eq(expected_result)
    end

    it 'returns conference steps when pass conference param' do
      result = helper.steps('conference')

      expected_result = { register: { name: 'register', status: 'active', step: '1' },
        access: { name: 'access', status: 'active', step: '2' },
        payment: { name: 'payment', status: 'active', step: '3' },
        conference: { name: 'conference', status: 'active', step: '4' },
        congratulations: { name: 'congratulations', status: 'inactive', step: '5' } }

      expect(result).to eq(expected_result)
    end

    it 'returns congratulations steps when pass congratulations param' do
      result = helper.steps('congratulations')

      expected_result = { register: { name: 'register', status: 'active', step: '1' },
        access: { name: 'access', status: 'active', step: '2' },
        payment: { name: 'payment', status: 'active', step: '3' },
        conference: { name: 'conference', status: 'active', step: '4' },
        congratulations: { name: 'congratulations', status: 'active', step: '5' } }

      expect(result).to eq(expected_result)
    end
  end
end
