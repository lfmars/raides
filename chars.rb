file = File.open('info.txt', 'r').read
hsh=Hash.new(0)
  file.split("").each do |char|
     hsh[char] +=1
  end
  print hsh.sort
