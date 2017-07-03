def convert_between_temperature_units(degrees, degrees_unit, result_unit)
	# make degrees_unit to Celsium
	case degrees_unit 
	when  'C' then result = degrees
	when  'K' then result = degrees - 273.15
	when  'F' then result = (degrees-32)*(5/9)
	end

	# celsium_unit to result_unit
	case result_unit
	when 'C' then end_result = result
	when 'K' then end_result = result + 273.15
	when 'F' then end_result = result*1.8 + 32
	end

	end_result

end


def boiling_point_of_substance(substance, result_unit)	
	
	# boiling degrees
	case substance
	when "water" then result = 100
	when "ethanol" then result = 78.37
	when "gold" then result = 2700
	when "silver" then result = 2162
	when "copper" then result = 2567
	end

	final_result = convert_between_temperature_units(result, 'C', result_unit)
	final_result

end

def melting_point_of_substance(substance, result_unit)

	# melting in degrees
	case substance
	when "water" then result = 0
	when "ethanol" then result = -114
	when "gold" then result = 1064
	when "silver" then result = 961.8
	when "copper" then result = 1085
	end
	
	final_result = convert_between_temperature_units(result, 'C', result_unit)
	final_result
end

puts boiling_point_of_substance('water', 'C') #=> 100
puts boiling_point_of_substance('water', 'K') #=> 373.15
puts melting_point_of_substance('water', 'C') #=> 0
puts melting_point_of_substance('water', 'K') #=> 273.15