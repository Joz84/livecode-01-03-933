#identifier chaque mot et stocker dans un tableau
#pour chaque mot, prendre la premiere lettre et mettre la lettre en majuscule
#la stocker dans un nouveau tableau
#concaténation

def acronymize(text)
    words = text.split
    letters = words.map do |word|
        letter = word[0].upcase
    end
    return letters.join
end

# def acronymize(text)
#     text.split.map { |word| word[0].upcase }.join
# end

# puts acronymize("") == ""
# puts acronymize("AWAY FROM KEYBOARD") == "AFK"
# puts acronymize("read the fucking manual") == "RTFM"

describe("#acronymize") do
    it("returns an empty string when passed an empty string") do
        actual = acronymize("")
        expected = ""
        expect(actual).to eq(expected) # passes if `actual == expected`
    end

    it "returns the acronym on downcased sentences" do
        actual = acronymize("working from home")
        expected = "WFH"
        expect(actual).to eq(expected)
    end

    it "returns the acronym on upcased sentences" do
        actual = acronymize("AWAY FROM KEYBOARD")
        expected = "AFK"
        expect(actual).to eq(expected)
    end
end











































