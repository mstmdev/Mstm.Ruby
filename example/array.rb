array=Array.new
puts array.size
puts array.length


arr1=Array.new(10)
puts arr1.size
puts arr1.length


arr2=Array.new(2,"hi")
puts arr2.size
puts arr2.length
puts arr2

arr3=Array.[]("hello","array")
puts arr3.size
puts arr3.length
puts arr3

arr4=Array[2,4,5,7,8,"wtar"]
puts arr4.size
puts arr4.length
puts arr4
puts arr4[1]
puts arr4.at(1)

nums=Array(1..100)
puts nums
puts nums.to_s
puts nums.pack('c')
