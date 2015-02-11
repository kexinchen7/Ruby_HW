if ARGV.empty?
	puts "Usage: #{__FILE__} <name>"
	exit(2)
end

ARGV.each do |a|
	puts "Hello #{a.capitalize}"
end