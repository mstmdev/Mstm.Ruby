num=10


while num>0
	puts num
	num-=1
end


count=1
begin 
puts "这段话"
#puts "\r\n"
puts "在条件为真时输出"
count+=1
end while count <5

until count<5
puts "hello until"
count-=1
end


for i in 1..12
puts "i:"+i.to_s
end


for i in 20...30
puts i
	if i==25
		next
		#此处使用redo 会陷入死循环
		#redo
	end
end
