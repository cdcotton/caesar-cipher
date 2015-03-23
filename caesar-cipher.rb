def caesar_cipher(phrase, n)  
    words = phrase.split(' ')
    newPhrase = []
    n %= 26
    
    words.each do |word|
        
        newWord = ""   
        word.each_char do |c|
            c = c.ord + n
            if (c > 90 && c < 97) || c > 122 
                c -= 26
            end
            
            newWord += c.chr
        end
        
        newPhrase.push(newWord) 
    end
    
    newPhrase = newPhrase.join(' ')
    print newPhrase    
end

caesar_cipher("What a string", 5)