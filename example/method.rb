class Test

#可变参数  在参数名前加*
def hello(*word)
puts word

end

#undef hello

alias hi hello

end


Test.new.hello("hi","this","is","lili")
Test.new.hi("hi","this","is","lili")


r=defined? Test.new.hello
puts r
