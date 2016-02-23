describe 'RomNumConverter' do
  let(:num) {double('num')}
  subject {RomNumConverter.new}

  describe '#convert_arabic' do

    it 'method is defined' do
      expect(RomNumConverter.method_defined?(:convert_arabic)).to be true
    end
  end
end