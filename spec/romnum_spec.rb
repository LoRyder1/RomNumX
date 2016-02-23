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

    it "converts 1 to 'I'" do
      subject.convert_arabic(1)
      expect(subject.roman).to eq "I"
    end

    it "converts 2 to 'II'" do
      subject.convert_arabic(2)
      expect(subject.roman).to eq "II"
    end
  end
end