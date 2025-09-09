RNDM_NO = '13'
NUMBER_SET_AT = 21
LN_BREAK = "\n"

def those_calculations(numbers)
  if numbers[:calculated] == numbers[:number]
	  print (LN_BREAK * 2) + "ok!"  + (LN_BREAK)
	  print "%s + %s" %[numbers[:one], numbers[:two]]
  else
	  false 
  end
  sleep 1.2
end

def find_number(random_number=RNDM_NO, seeker_number=NUMBER_SET_AT)
  seeker_number.times do |integer_1|
    seeker_number.times do |integer_2|
      set_hash = {'one': integer_1, 'two':  integer_2 }
      set_hash[:calculated] = set_hash.sum { |k, v| v }
      set_hash[:number] = random_number
      those_calculations(set_hash)
    end
  end
end
