puts (1..10).to_a
puts ('a'..'z').to_a
puts ('a'..'z').include?('z')
puts (10...23).max
#挑选出不符合条件的
puts (30...41).reject{|i|i<35}

('e'...'k').each do |word|
	puts "word:#{word}"
end


puts ('a'..'c')==='b'
puts ('a'..'c')==='d'

