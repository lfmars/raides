file = File.open('info.txt', 'r').read
sk=0
hsh=Hash.new(0)
  file.gsub(" ","").split("").each do |char|
     hsh[char] +=1
     sk+=1

  end
  puts hsh.sort
  puts sk
