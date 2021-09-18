=begin
	这里是多行注释的内容
	这个示例演示了::的用法
=end

CONST='this is a CONST'


class Inside_one
	CONST=proc{' in there'}
	
	def where_is_my_CONST
		::CONST+"inside one"
	end
	
end

class Inside_two

	CONST=" inside two"
	
	def where_is_my_CONST
		CONST
	end
	
end


#this is a CONSTinside one
puts Inside_one.new.where_is_my_CONST
# inside two
puts Inside_two.new.where_is_my_CONST
#this is a CONST inside two
puts Object::CONST+Inside_two::CONST
# inside twothis is a CONST
puts Inside_two::CONST+CONST
#<Proc:0x569cfc36@Const.rb:5>
puts Inside_one::CONST
# in there inside two
puts Inside_one::CONST.call+Inside_two::CONST
