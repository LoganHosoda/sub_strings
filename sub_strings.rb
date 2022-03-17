# Substrings by Logan Hosoda

# Given a string, and array of dictionary words,
# count how many substrings exist within the
# given string
def substrings(string, dictionary_array)
	split_string = string.downcase.split(" ")
	substrings_array = []
	split_string.each {|word| substrings_array += string_compare(word, dictionary_array)}
	substrings_hash = substrings_array.reduce(Hash.new(0)) do |result, counter|
		result[counter] += 1
		result
	end
	puts substrings_hash
end

# Compare single word string to dictionary array,
# return array of matching words
def string_compare(string, dictionary_array)
	substring_array = []
	counter = 0
	while counter < dictionary_array.length
		if string.include?(dictionary_array[counter])
			substring_array += [dictionary_array[counter]]
		end
		counter += 1
	end
	substring_array
end

dictionary = [
	"below","down","go","going","horn","how","howdy",
	"it","i","low","own","part","partner","sit"
]

puts "--- Substrings, by Logan Hosoda ---"
puts "Please enter a word: "
word = gets.chomp
puts "Substrings for '#{word}': "
substrings(word, dictionary)