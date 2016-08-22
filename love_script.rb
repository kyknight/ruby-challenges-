puts "Are you good? Y/N"
answer = gets.chomp.downcase

while (answer=='y')
	puts "I love you."
	puts "Are you good? Y/N"
	answer = gets.chomp.downcase
end

while (answer== 'n')
	puts "I love you more."
	puts "Are you good? Y/N"
	answer = gets.chomp.downcase
end
