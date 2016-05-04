#class Statistic
 #attr_accessor :file, :hsh

def readFile
@file = File.open('text.txt', 'r').read
end

def calculate
sk=0
  @hsh=Hash.new(0)
   @file.gsub!(/[^a-zA-Z]/, '').split("").each do |char|
      @hsh[char] +=1
        sk+=1
    end
puts sk
   end

readFile
calculate
puts @hsh.sort
puts @file
