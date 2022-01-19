require_relative '../src/corrector'

describe Corrector do
  context 'When testing the Corrector class' do
    it "should correct a string" do
      lc_name = 'max'
      long_name = 'Maximiliano'
      corrector = Corrector.new
      
      expect(corrector.correct_name(lc_name)).to eq 'Max'
      expect(corrector.correct_name(long_name)).to eq 'Maximilian'
    end
  end
end