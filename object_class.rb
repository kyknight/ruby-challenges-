class Derby

	attr_accessor :name, :number
end

class Player < Derby

	attr_accessor :team

	def about_player
		return "#{@name} is number #{@number} and plays with #{@team}."
	end
end

class Position < Derby

	attr_accessor :position_p
end

my_derby = Player.new
my_derby.name = 'Sour Patch'
my_derby.number = '88'
my_derby.team = 'West Texas Roller Derby'

puts my_derby.name
puts my_derby.number
puts my_derby.about_player