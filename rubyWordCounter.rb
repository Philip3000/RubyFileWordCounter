#Counts the words in a string and makes it to a hash
def wordCounter(text) 
    hash = {}
    textArray = text.split(" ")
    for item in textArray
        if hash.key?(item)
            hash[item] += 1
        else
            hash[item] = 1
        end
    end
    return hash
end
#Sorts the previously made hash by value
def sort_hash(hash)
    hashToSort = hash
    sortedHash = hashToSort.sort_by { |key, value| value}.reverse.to_h
    sortedHash.each do |key, value|
        puts "#{key}: #{value}"
    end
end
#reads a file and un utilises the 2 previous functions
def file_reader(fileName)
    file = File.open(fileName, "r")
    fileText = file.read
    hash = wordCounter(fileText)
    sorted = sort_hash(hash)
    file.close
end


puts "Welcome to the Word Count Analyzer!"
puts ""
puts "Enter the name of the text file to analyze:"
text_file = gets.chomp
puts ""
puts "Word count analysis:"
puts "--------------------------------"
file_reader(text_file)
puts "Would you like to continue? [Y], [N]"
inp = gets.chomp 
if inp == "N"
    exit
end


        
