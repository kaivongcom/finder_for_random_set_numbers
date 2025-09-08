RNDM_NO = 13
NUMBER_SET_AT = 21
LN_BREAK = "\n"

def print_calculations(numbers)
  print "%s + %s" %[numbers[:one], numbers[:two]]
  print LN_BREAK + "ok!"  + LN_BREAK
end

def find_number(random_number=RNDM_NO)
  NUMBER_SET_AT.times do |integer_1|
    sum = {}
      NUMBER_SET_AT.times do |integer_2|
      these_numbers = {'one': integer_1, 'two':  integer_2}
			sum[:calculated] = these_numbers.sum { |key, value| value }
      if (sum[:calculated] == random_number) then print_calculations(these_numbers) else false end
      sleep 1.2 # number as float, 1-decimal, of seconds
    end
  end
end

find_number()