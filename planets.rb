######## Part 1 #########

planet_list = ["Mercury", "Mars"]
planet_list << "Jupiter"
planet_list << "Saturn"
planet_list.concat ["Uranus", "Neptune"]
planet_list.insert(1, "Venus")
planet_list.insert(2, "Earth")
planet_list << "Pluto"
# puts "Planet List (w/Pluto): ", planet_list
# puts "\n"

rocky_planets = planet_list.slice(0,4)
# puts "Rocky Planets: ", rocky_planets
# puts "\n"

planet_list.pop
puts "Planet List: ", planet_list
puts "\n"

######### Part 2 #########

spacecraft_hash = {
	"Mariner 10" => ["Mercury", "Venus"],
	"Venera 7" => ["Venus"],
	"Ship from whatever planet Beyonce is from" => ["Earth"],
	"Mars Exploration Rover" => ["Mars"],
	"Pioneer 11" => ["Jupiter", "Saturn"],
	"Voyager 1" => ["Jupiter", "Saturn"],
	"Voyager 2" => ["Jupiter", "Saturn", "Uranus", "Neptune"]
}

for planet in planet_list
	print planet, ":\n"
	spacecraft_hash.each do |craft, planets|
		for i in planets
			if planet == i
				print "#{craft}\n"
			end
		end
	end
	print "\n"
end
