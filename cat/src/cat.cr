ARGV.each do |file|
  File.read_lines(file)
      .each {|line| STDOUT.puts line}
end

exit 0