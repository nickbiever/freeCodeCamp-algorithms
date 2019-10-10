func repeatStringNumTimes(str: String, num: Int) -> String {

    var newString = ""

    if (num > 0) {
        for _ in 0..<num {
            newString += str
        }
    }

    return newString

    // The correct way doing this is using: String(repeating: str, count: num)
}

repeatStringNumTimes(str: "*", num: 3)      // Should return "***"
repeatStringNumTimes(str: "abc", num: 3)    // Should return "abcabcabc"
repeatStringNumTimes(str: "abc", num: 4)    // Should return "abcabcabcabc"
repeatStringNumTimes(str: "abc", num: 1)     // Should return "abc"
repeatStringNumTimes(str: "*", num: 8)      // Should return "********"
repeatStringNumTimes(str: "abc", num: -2)   // Should return ""
