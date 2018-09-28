require 'sloth'

describe Sloth do
  subject(:hamie) {Sloth.new("hamie")}

  describe '#initialize' do
    it 'assigns a name' do
      expect(hamie.name).to eq('hamie')
    end
  end
    it 'starts with an empty array' do
      expect(hamie.foods).to eq([])
  end

  describe '#eat' do
    it 'adds a new food to the foods array' do
      expect(hamie.foods).to_not include('leaves')
      hamie.eat('leaves')
      expect(hamie.foods).to include('leaves')
    end
  end

  describe '#drink' do
    before(:each) { hamie.drink( 'lemonade','10' ) }
    it 'adds the drink as a key to the drinks hash'  do
      expect(hamie.drinks).to have_key('lemonade')
    end
    it 'adds the amount as a key to the drinks hash'  do
      expect(hamie.drinks).to have_value('10')
    end
  end
end
