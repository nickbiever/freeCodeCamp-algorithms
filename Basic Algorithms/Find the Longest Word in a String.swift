func findLongestWordLength(str: String) -> Int {
    let mapStringToArray = str.components(separatedBy: " ")

    var wordLenght = 0

    for word in mapStringToArray {
        if (wordLenght < word.count) { wordLenght = word.count }
    }

    return wordLenght
}

findLongestWordLength(str: "The quick brown fox jumped over the lazy dog")                  // Should return 6
findLongestWordLength(str: "May the force be with you")                                     // Should return 5
findLongestWordLength(str: "Google do a barrel roll")                                       // Should return 6
findLongestWordLength(str: "What is the average airspeed velocity of an unladen swallow")   // Should return 8
findLongestWordLength(str: "What if we try a super-long word such as otorhinolaryngology")  // Should return 19
