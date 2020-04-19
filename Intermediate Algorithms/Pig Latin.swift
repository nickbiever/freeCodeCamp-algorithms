func translatePigLatin(str: String) -> String {
    var firstCharacters = ""
    let vowels = ["a", "e", "i", "o", "u"]
    var newStr = ""
    var firstCharacterTotal: Int? = nil

    for vowel in vowels {
        if let index = str.range(of: vowel)?.lowerBound {
            if (firstCharacterTotal == nil) { firstCharacterTotal = str[..<index].count }

            if (str[..<index].count <= firstCharacterTotal!) {
                firstCharacters = String(str[..<index])

                newStr = firstCharacters.count > 0 ? String(str.dropFirst(firstCharacters.count)) + firstCharacters + "ay" : str + "way"
            }

            break
        } else {
            newStr = str + "ay"
        }
    }

    return newStr
}

translatePigLatin(str: "california")    // Should return "aliforniacay"
translatePigLatin(str: "paragraphs")    // Should return "aragraphspay"
translatePigLatin(str: "glove")         // Should return "oveglay"
translatePigLatin(str: "algorithm")     // Should return "algorithmway"
translatePigLatin(str: "eight")         // Should return "eightway"
translatePigLatin(str: "schwartz")      // Should return "artzschway"
translatePigLatin(str: "rhythm")        // Should return "rhythmay"
