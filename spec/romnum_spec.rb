describe 'RomNumConverter' do
  let(:num) {double('num')}
  subject {RomNumConverter.new}

  describe '#convert_arabic' do

    it 'method is defined' do
      expect(RomNumConverter.method_defined?(:convert_arabic)).to be true
    end

    it 'method should take in one argument' do
      expect(subject.method(:convert_arabic).arity).to eq 1
    end
  end
end