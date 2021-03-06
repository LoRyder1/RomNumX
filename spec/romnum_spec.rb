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

    it "add key value to final string" do
      conv_ar 2
      expect(subject.roman).to eq "II"
    end

    it 'only one substraction can be made' do 
      conv_ar 3
      expect(subject.roman).to eq "III"
    end

    context 'using modulus to redefine input' do

      it "the '1' symbols can only be substracted once" do
        conv_ar 4
        expect(subject.roman).to eq "IV"
      end

      it "convert 5 to 'V'" do
        conv_ar 5
        expect(subject.roman).to eq "V"
      end

      it "make sure other keys are not added" do
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

      it "converts 1459 to 'MCDLIX'" do
        conv_ar 1459
        expect(subject.roman).to eq 'MCDLIX'
      end

      it "converts 99 to 'XCIX'" do
        conv_ar 99
        expect(subject.roman).to eq 'XCIX'
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
      conv_num 'I'
      expect(subject.arabic).to eq 1
    end

    it "make sure to slice string for each iteration" do
      conv_num 'II'
      expect(subject.arabic).to eq 2
    end

    it "converts 'III' to 3" do
      conv_num 'III'
      expect(subject.arabic).to eq 3
    end

    it "make sure slice eliminates the rest of string" do
      conv_num 'IV'
      expect(subject.arabic).to eq 4
    end

    context 'user test cases' do

      it "converts 'IX' to 9" do
        conv_num 'IX'
        expect(subject.arabic).to eq 9
      end

      it "converts 'MLXVI' to 1066" do
        conv_num 'MLXVI'
        expect(subject.arabic).to eq 1066
      end

      it "converts 'MCMLXXXIX' to 1989" do
        conv_num 'MCMLXXXIX'
        expect(subject.arabic).to eq 1989
      end
    end
  end
end
