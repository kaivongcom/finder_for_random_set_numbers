RNDM_NO = '13'
NUMBER_SET_AT = 21
LN_BREAK = "\n"

def print_calculations(numbers)
  print (LN_BREAK * 2) + "ok!"  + (LN_BREAK)
  print "%s + %s" %[numbers[:one], numbers[:two]]
end

def find_number(random_number=RNDM_NO)
  NUMBER_SET_AT.times do |integer_1|
      NUMBER_SET_AT.times do |integer_2|
      set_hash = {'one': integer_1, 'two':  integer_2}
			set_hash[:calculated] = set_hash.sum { |k, v| v }
      if (set_hash[:calculated] == random_number) then print_calculations(set_hash) else false end
      sleep 1.2 
    end
  end
end
