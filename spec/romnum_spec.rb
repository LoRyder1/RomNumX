describe 'RomNumConverter' do
  subject {RomNumConverter.new}

  def conv_ar num
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
      conv_ar 1
      expect(subject.roman).to eq "I"
    end

    it "converts 2 to 'II'" do
      conv_ar 2
      expect(subject.roman).to eq "II"
    end

    it "add key value to final string" do 
      conv_ar 3
      expect(subject.roman).to eq "III"
    end

    context 'using modulus to redefine input' do

      it 'make sure other keys are not added' do
        conv_ar 4
        expect(subject.roman).to eq "IV"
      end

      it "convert 5 to 'V'" do
        conv_ar 5
        expect(subject.roman).to eq "V"
      end

      it "converts 9 to 'IX" do
        conv_ar 9
        expect(subject.roman).to eq 'IX'
      end

      it "converts 1066 to 'MLXVI'" do
        conv_ar 1066
        expect(subject.roman).to eq 'MLXVI'
      end

      it "converts 1989 to 'MCMLXXXIX'" do 
        conv_ar 1989
        expect(subject.roman).to eq 'MCMLXXXIX'
      end
    end
  end

  def conv_num num
    subject.convert_numeral(num)
  end

  describe '#convert_numeral' do

    it 'method is defined' do
      expect(RomNumConverter.method_defined?(:convert_numeral)).to eq true
    end

    it 'method takes one argument' do
      expect(subject.method(:convert_numeral).arity).to eq 1
    end

    it "converts 'I' to 1" do
      conv_num 1
      expect(subject.arabic).to eq 1
    end

    it "converts 'II' to 2"

    it "converts 'III' to 3"

    it "converts 'IV' to 4"

    context 'user test cases' do

      it "converts 'IX' to 9"

      it "converts 'MLXVI' to 1066"

      it "converts 'MCMLXXXIX' to 1989"
    end
  end
end

