# Example 2 - Pass file to block
File.open("colors.txt", "r") do |infile|
  while (line = infile.gets)
    if line.length == 8
      puts line.downcase
    elsif line.length == 5
      puts "#{line[0]}#{line[1]}#{line[1]}#{line[2]}#{line[2]}#{line[3]}#{line[3]}".downcase
    else
      puts "*** error #{line} ***"
    end
  end
end