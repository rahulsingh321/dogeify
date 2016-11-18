require "spec_helper"
require 'byebug'

describe Dogeify do
  subject { Dogeify.new }
  
  it 'has a version number' do
    expect(Dogeify::VERSION).not_to be nil
  end
  
  describe '#process' do 
    let(:input) { 'My grandmom gave me a sweater for Christmas.' }
    let(:output) { subject.process(input)}

    it 'convert to lower case' do
      expect(output.downcase).to eq output
    end
  
    it 'combines nouns with doge adjectives' do
      expect(output).to match /so grandmom./i
      expect(output).to match /such sweater./i
      expect(output).to match /very christmas./i
    end
    
    it 'always appends "wow."' do
      expect(output).to end_with 'wow.' 
    end
  end
  
end
