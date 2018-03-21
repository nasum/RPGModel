require './lib/charactor'
require './lib/element'
require './lib/equipment'
require './lib/job'
require './lib/player'

charactor = Charactor.new(:MAN)
element = Element.new(:WATER)
job = Job.new(:FIGHTER)
equipment = Equipment.new(:SWORD)

player = Player.new(charactor, element, job, equipment)

puts player.offensive_power
puts player.defence_power
puts player.skill
