require_relative 'main'

describe 'morsetest' do
  word = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
  it 'should return HELLO' do
    expect(decode(word)).to eq('ABOXFULLOFRUBIES')
  end
end
