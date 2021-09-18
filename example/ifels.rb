=begin
关于if else unless case 的一些用法
=end

num1=10
num2=11
if(num1>num2)
puts "num1>num2"
elsif(num1==num2)
puts "num1==num2"
else
puts "num1<num2"
end

lang="jruby"
puts "hi ruby" if lang=="ruby"

puts "hi jruby" unless lang=="ruby"


unless num1>num2
puts "num1<=num2"
else
puts "num1>num2"
end

case lang
when "ruby"
	puts "hello ruby"
when "jruby"
	puts "hello jruby"
when "C#"
	puts "hello C#"
else 
	puts "what is that ?"
end
	 