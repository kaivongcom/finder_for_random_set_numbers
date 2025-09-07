RNDM_NO = '13'
NUMBER_SET_AT = 21
LN_BREAK = "\n"

def print_calculations(numbers)
  print "%s + %s" %numbers
  print LN_BREAK + "ok!"  + LN_BREAK
end

def find_number(random_number=RNDM_NO)
  NUMBER_SET_AT.times do |integer_1|
    sum = {}
      NUMBER_SET_AT.times do |integer_2|
      these_numbers = [integer_1, integer_2]
      sum[:calculated] = these_numbers[0] + these_numbers[1]
      if (sum[:calculated] == random_number) then print_calculations(these_numbers) else false end
      sleep 1.2 # number as float, 1-decimal of ms-miliseconds
    end
  end
end

