#write your code here

def echo message
    message
end

def shout message
    message.upcase
end

def repeat message, num = 2
    result = ""
    num.times do
        result  = result + "#{message} "
    end
    result = result[0, result.length-1]
end

def start_of_word message, num
    message[0, num]
end

def first_word string
    result = string.split(' ')
    result[0]
end

def titleize word
    arr = word.split(" ")
    result = ""
    i = 0
    for word in arr
        if i == 0
            result += "#{word.capitalize} "
        elsif word != "and" and word != "the" and word != "over"

            result += "#{word.capitalize} "
        else
            result += "#{word} "
        end
        i += 1
    end
    result = result[0, result.length-1]
    result
end
titleize ("The Bridge over The River Kwai")
