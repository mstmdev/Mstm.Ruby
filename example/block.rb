
def hello

	puts "start"
	yield
	puts "end"
end



hello{puts "input from block test_block"}


def hello2

	puts "start2"
	yield "tim",19
	puts "end2"
end

hello2{|name,age| puts "hello,I'm #{name},#{age} years old"}



def hello3(&block)
	block.call
end


hello3 {puts "hello3"}



BEGIN{
	puts "脚本开始执行"
}



END{
	puts "脚本执行和结束"
}