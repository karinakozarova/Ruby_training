def convert_between_temperature_units(degrees, degrees_unit, result_unit)
	# make degrees_unit to Celsium
	if degrees_unit == 'C'
		# nothing to do here
		result = degrees
	elsif degrees_unit == 'K'
		#T(°C) = T(K) - 273.15
		result = degrees - 273.15
	else	
		# F to C 	
		# T(°C) = (T(°F) - 32) × 5/9
		result = (degrees-32)*(5/9)
	end

	# celsium_unit to result_unit

	if result_unit == 'C'
		end_result = result
	elsif result_unit == 'K'
		end_result = result + 273.15

	else	
		# farenhait
		#T(°F) = T(°C)*1.8 + 32
		end_result = result*1.8 + 32
	end
	end_result

end


def melting_point_of_substance(substance, result_unit)

	# melting in degrees
	if substance == "water"
		result = 0
	elsif substance == "ethanol"
		result = -114
	elsif substance == "gold"
		result = 1064
	elsif substance == "silver"
		result = 961.8
	else 
		# copper
		result = 1085
	end
	final_result = convert_between_temperature_units(result, 'C', result_unit)
	final_result
end

puts melting_point_of_substance('water', 'C') #=> 0
puts melting_point_of_substance('water', 'K') #=> 273.15