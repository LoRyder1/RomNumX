describe 'RomNumConverter' do
  let(:num) {double('num')}
  subject {RomNumConverter.new}

  def conv_num num
    subject.convert_arabic(num)
  end

  describe '#convert_arabic' do

    it 'method is defined' do
      expect(RomNumConverter.method_defined?(:convert_arabic)).to be true
    end

    it 'method should take in one argument' do
      expect(subject.method(:convert_arabic).arity).to eq 1
    end

    it "converts 1 to 'I'" do
      conv_num 1
      expect(subject.roman).to eq "I"
    end

    it "converts 2 to 'II'" do
      conv_num 2
      expect(subject.roman).to eq "II"
    end

    it "add key value to final string" do 
      conv_num 3
      expect(subject.roman).to eq "III"
    end

    context 'using modulus to redefine input' do

      it 'make sure other keys are not added' do
        conv_num 4
        expect(subject.roman).to eq "IV"
      end

      it "convert 5 to 'V'" do
        conv_num 5
        expect(subject.roman).to eq "V"
      end

      it "converts 9 to 'IX" do
        conv_num 9
        expect(subject.roman).to eq 'IX'
      end

      it "converts 1066 to 'MLXVI'"

      it "converts 1989 to 'MCMLXXXIX'"
    end
  end
end