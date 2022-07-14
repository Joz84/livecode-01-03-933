#spliter le texte et le stocker dans un tableau de lettres
#pour chaque lettre
    #créer un tableau d'alphabet
    #si la lettre est incluse dans le tableau alphabet
        #définir l'index de la lettre dans le tableau alphabet
        #trouver la lettre à l'index -3
    #sinon on ne fait pas de transformation
#et le stocker dans un tableau
#concaténation

def encrypt(text, key)
    letters = text.split("")
    alphabet = ("A".."Z").to_a
    encrypted_letters = letters.map do |letter|
        if alphabet.include?(letter)
            index = alphabet.index(letter)
            alphabet[index- key]
        else
           letter
        end
    end
    encrypted_letters.join
end

ALPHA = ("A".."Z").to_a

def encrypt(text, key)
    text.split("").map { |letter| ALPHA.include?(letter) ? ALPHA[ ALPHA.index(letter) - key] : letter }.join
end

p encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG", 3)
p "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
