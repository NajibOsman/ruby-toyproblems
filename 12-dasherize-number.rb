# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
	answer = ''
	num.to_s.each_char do |x|
		if x.to_i.odd?   
			if answer.match(/-$/)
				answer += x + '-' 
			else
				answer += '-' + x + '-'
			end
		else
			answer += x
		end

	end
	answer.reverse.chomp('-').reverse.chomp('-')
end

puts("dasherize_number(203) == \"20-3\": #{dasherize_number(203) == "20-3"}")
puts("dasherize_number(303) == \"3-0-3\": #{dasherize_number(303) == "3-0-3"}")
puts("dasherize_number(333) == \"3-3-3\": #{dasherize_number(333) == "3-3-3"}")
puts("dasherize_number(3223) == \"3-22-3\": #{dasherize_number(3223) == "3-22-3"}")
