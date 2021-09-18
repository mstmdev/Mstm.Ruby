#exception

begin
	raise "I'm busy"
	rescue Exception =>ex
	puts "some exception happend"
	puts ex.message
	#loop died
	#retry
	
	ensure
	puts "work finished !"
end



#catch throw  类似goto  示例有问题
catch :doSomething do
	puts "do something from catch"
	puts "start"
	throw :doSomething
	puts "end"
end