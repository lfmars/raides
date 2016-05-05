require 'json'
class Statistic
attr_accessor :text, :hsh

def initialize
@text = File.open('text.txt', 'r').read
end

def calculate
  @hsh=Hash.new(0)
    text.gsub!(/[^a-zA-Z]/, '').split("").each do |char|
      @hsh[char] +=1
    end
    return @hsh
end

def printing
  c=calculate
    fileLength= 1 / text.length.to_f
      c.each { |k, v| hsh[k] *= fileLength }
  return hsh
end

end

result = File.open('json.txt', 'w')
result.puts Statistic.new().printing.to_json
result.close
