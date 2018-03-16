# --------------------------------------------------------------------------- #
# If the numbers 1 to 5 are written out in words: one, two, three, four, five,
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out
# in words, how many letters would be used?
#
# NOTE: Do not count spaces or hyphens. For example, 342
# (three hundred and forty-two) contains 23 letters and 115
# (one hundred and fifteen) contains 20 letters. The use of "and" when writing
# out numbers is in compliance with British usage.
# --------------------------------------------------------------------------- #

def translate_small_numbers(digits, translations)
  if digits.length > 1
    if digits[0] == '0'
      translate_sym = digits[1].to_sym
    else
      translate_sym = (digits[0] + digits[1]).to_sym
    end
  else
    translate_sym = digits[0].to_sym
  end
  translations[translate_sym]
end

def translate_tens(digits, translations)
  tens = translate_small_numbers(digits, translations)
  return tens if tens
  tens = digits[0] == '0' ? nil : translations[(digits[0] + '0').to_sym]
  ones = translations[digits[1].to_sym]
  translated = tens ? tens : ''
  if ones
    translated += tens ? '-' + ones : ones
  end
  translated
end

def translate_hundreds(digits, translations)
  hundreds = translations[digits[0].to_sym] + ' hundred'
  tens_and_ones = translate_tens(digits.slice(1,2), translations)
  translated = hundreds ? hundreds :  ''
  if tens_and_ones and tens_and_ones != ''
    translated += ' and ' + tens_and_ones
  end
  translated
end

translations = {
  '1': 'one',
  '2': 'two',
  '3': 'three',
  '4': 'four',
  '5': 'five',
  '6': 'six',
  '7': 'seven',
  '8': 'eight',
  '9': 'nine',
  '10': 'ten',
  '11': 'eleven',
  '12': 'twelve',
  '13': 'thirteen',
  '14': 'fourteen',
  '15': 'fifteen',
  '16': 'sixteen',
  '17': 'seventeen',
  '18': 'eighteen',
  '19': 'nineteen',
  '20': 'twenty',
  '30': 'thirty',
  '40': 'forty',
  '50': 'fifty',
  '60': 'sixty',
  '70': 'seventy',
  '80': 'eighty',
  '90': 'ninety'
}

character_count = 0

(1..1000).each do |num|
  translated = translations[num.to_s.to_sym]
  if translated.nil?
    digits = num.to_s.split('')
    if digits.length == 2
      translated = translate_tens(digits, translations)
    elsif digits.length == 3
      translated = translate_hundreds(digits, translations)
    elsif digits.length == 4
      translated = 'one thousand'
    end
  end
  # puts "number: #{num}, translation: #{translated}"
  translated_count = translated.gsub(' ', '').gsub('-', '').split('').count
  character_count += translated_count
end

puts character_count

