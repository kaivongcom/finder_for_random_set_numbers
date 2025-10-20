RNDM_NO = $ENV['random_number']
NUMBER_SET_AT = $ENV['number_set_to']
NEWLINE = "\n"

def those_calculations(numbers)
  if numbers[:calculated] == numbers[:number]
    print (NEWLINE * 2) + "ok!"  + (NEWLINE)
    print "%s + %s" %[numbers[:sum_rdy][0], numbers[:sum_rdy][1]]
  else
    false 
  end
  sleep 1.2
end

def find_number(random_number=RNDM_NO, seeker_number=NUMBER_SET_AT)
  seeker_number.times do |integer_1|
    seeker_number.times do |integer_2|
      set_hash = {'sum_rdy': [integer_1, integer_2]}
      set_hash[:calculated] = set_hash[:sum_rdy].sum
      set_hash[:number] = random_number
      those_calculations(set_hash)
    end
  end
end
 
