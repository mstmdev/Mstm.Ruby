#输出字符串并换行
puts "something happend"
puts "something stopped"
#读取控制台的输入
line=gets
puts "you said:#{line}"


str="i don't know"
#只会输出第一个字符
putc str
putc "\r\n"
#输出字符，但不会有换行
print "say something"
print "say something"
puts ""
puts "----------------"

#创建一个文件
file=File.new("io.txt","a+")
	file.syswrite("firstline\r\n")
	file.syswrite("second line\r\n")
file.close()

#打开上述创建的文件
File.open("io.txt","r+") do |f|
	puts f.sysread(10);
	file.close
end

File.open("io.txt","r+") do |f|
	f.each_byte{|ch| putc ch;putc ?.}
end
puts "\r\n"

#IO.readlines
puts "IO.readlines"
lines=IO.readlines("io.txt")
puts lines

#IO.foreach
puts "IO.foreach"
IO.foreach("io.txt"){|block|puts block}


#rename
File.rename("io2.txt","io.rename") if File::exists?("io2.txt")
File.delete("io.rename") if File::exists?("rename.txt")

#chmod

File.open("io.txt","a") do |f|
	f.chmod(0755)
	f.close
end

#查询是否为文件
puts "io.rb is a file ? #{File::file?("io.rb")}"
puts "io.rb is a directory ? #{File::directory?("io.rb")}"


#检查文件权限
puts "io.rb is readable ? #{File.readable?("io.rb")}"
puts "io.rb is writable ? #{File.writable?("io.rb")}"
puts "io.rb is executeable ? #{File.executable?("io.rb")}"

puts "io.rb is zero ? #{File.zero?("io.rb")}"
puts "io.rb size is #{File.size?("io.rb")}"
puts "io.rb file type is #{File.ftype("io.rb")}"


puts "io.rb ceatetime is #{File.ctime("io.rb")}"
puts "io.rb modificationtime is #{File.mtime("io.rb")}"
puts "io.rb last access time is #{File.atime("io.rb")}"


#目录操作
puts "current directory is #{Dir.pwd}"
#修改当前目录
Dir.chdir("../")
puts "current directory is changed #{Dir.pwd}"

puts "current directory contains #{Dir.entries(Dir.pwd)}"


Dir.foreach(Dir.pwd) do |entry|
	puts entry
end

puts ""
puts "dir list #{Dir["C:/*"]}"


#create directory
Dir.mkdir("io_temp") if Dir.exists?("io_temp")==false
Dir.mkdir("io_temp_2",755) if Dir.exists?("io_temp_2")==false

#delete directory
Dir.delete("io_temp")
Dir.delete("io_temp_2")


#tmpdir
require 'tmpdir'
puts "current tmpdir is #{Dir.tmpdir}"

