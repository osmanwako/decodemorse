MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3',
  '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
  '---..' => '8', '----.' => '9', '-----' => '0'
}.freeze

def decode_char(char)
  return ' ' if char == ' '

  MORSE_CODE[char]
end

# separated by 2 spaces
def decode_word(string)
  string.split('  ').map { |word| word.split.map { |char| decode_char(char) }.join }.join(' ')
end

# separated by 3 spaces
def decode(string)
  string.split('   ').map { |word| decode_word(word) }.join(' ')
end

p decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...') # ABOXFULLOFRUBIES
