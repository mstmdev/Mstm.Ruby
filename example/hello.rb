# -*- coding: UTF-8 -*-
require "digest/md5"
module HY
class HY::Person

@@user_name="张三"
@@user_age=19

def say
	puts "hello,I'm",@@user_name
end

end

puts "你好啊"
p=HY::Person.new
p.say
print Digest::MD5.hexdigest("123456")



end
BEGIN{
puts "hi"
}

END {
puts "bye"
}
