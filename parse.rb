#!/usr/bin/env ruby

colors = []

File.open(ARGV[0], "r") do |infile|
  while (line = infile.gets)
    /#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})/.match(line) do |m|
        m = "#{m}".downcase

        if m.length == 4
          m = "#{m[0]}#{m[1]}#{m[1]}#{m[2]}#{m[2]}#{m[3]}#{m[3]}"
        end

        if colors.index( m ).nil?
            colors << m
        end
    end
  end
end

puts colors