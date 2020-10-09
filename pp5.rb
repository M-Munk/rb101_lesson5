# figure out the total age of just the male members of the family

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# input: hash of hashes
# output: integer sum of ages of male members
# algorithm: select male members 
# sum ages of males

sum = 0
munsters.each_value { |v| sum += v['age'] if v['gender'] == 'male'}
p sum

