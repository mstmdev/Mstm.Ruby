#each
[2,4,6,8,10].each do |item|
	puts "print #{item}"
end

newArr=[10,20,30,40,50].collect{|item|item+1}
puts newArr