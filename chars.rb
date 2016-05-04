class Statistic

def initialize
@file = File.open('text.txt', 'r').read
end

def calculate
  puts @file.length
    @hsh=Hash.new(0)
   @file.gsub!(/[^a-zA-Z]/, '').split("").each do |char|
        @hsh[char] +=1
      end
      puts @file.length
   end


 end


Statistic.new.calculate
