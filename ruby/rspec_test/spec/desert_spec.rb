require 'desert'

describe Desert do
  subject(:brownie) {Desert.new('brownie', 40)}

  describe '#initialize' do

    it 'returns correct type variable' do
      expect(brownie.type).to eq('brownie')
    end

    it 'returns exact amount' do
      expect(brownie.amount).to eq(40)
    end

    context 'with a huge amount' do
      subject(:brownie) {Desert.new('brownie', 50)}
      it 'returns a huge mount with giant amount' do
        expect(brownie.amount).to eq('giant amount')
      end
    end

      it 'raise an error if amount is not a string' do
        expect{ Desert.new('brownie', 'tons')}.to raise_error('Amount must be a number')
    end
  end
end
