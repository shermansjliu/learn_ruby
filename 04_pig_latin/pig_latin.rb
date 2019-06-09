#write your code here
def translate message
    vowels = ['a', 'e', 'i', 'o', 'u']
    result = ''
    message = message.split(' ')
    for word in message do

            consonants = ''
            i = 0
            while i < word.length do
                if word[i] == 'q' && word[i+1] == 'u'
                    consonants += 'qu'
                    i += 2

                elsif !vowels.include?(word[i])
                    consonants += word[i]
                    i += 1
                else
                    break
                end

            end
            result += "#{word + consonants}ay "[consonants.length...]

        end
        result = result[0, result.length-1]
        result
    end
