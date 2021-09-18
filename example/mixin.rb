module A
	def hello_a
		puts "hello_a"
	end
end


module B
	def hello_b
		puts "hello_b"
	end
end


module C
	class Test
		include A
		include B
	
		def hello_c
			puts "hello_c"
		end
	end
end

t=C::Test.new
t.hello_a
t.hello_b
t.hello_c