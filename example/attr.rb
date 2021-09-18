class Person

def initialize(name,age)
	@name=name
	@age=age
end

def say
	puts "Hi,I'm"+@name+" I was "+@age.to_s+" years old !"
end

attr_reader :name,:age  #name  age均可读
attr_writer :age		#age 可写  name不可写
attr_accessor
end

p=Person.new("张三",18)
p.say
#name不可写 这里会设置失败
#p.name="李四"
p.age=20
p.say