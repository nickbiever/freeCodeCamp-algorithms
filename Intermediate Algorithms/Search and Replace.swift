func myReplace(str: String, before: String, after: String) -> String {

    var stringToArray = str.components(separatedBy: " ")

    for i in 0..<stringToArray.count {
        if (stringToArray[i] == before) {
            if (stringToArray[i].prefix(1) == stringToArray[i].prefix(1).uppercased()) {
                stringToArray[i] = after.prefix(1).uppercased() + after.dropFirst()
            } else {
                stringToArray[i] = after
            }
        }
    }

    return stringToArray.joined(separator: " ")

//    Correct way of doint it: str.replacingOccurrences(of: before, with: after)
}

myReplace(str: "Let us go to the store", before: "store", after: "mall")                    // Should return "Let us go to the mall"
myReplace(str: "He is Sleeping on the couch", before: "Sleeping", after: "sitting")         // Should return "He is Sitting on the couch"
myReplace(str: "This has a spellngi error", before: "spellngi", after: "spelling")          // Should return "This has a spelling error"
myReplace(str: "His name is Tom", before: "Tom", after: "john")                             // Should return "His name is John"
myReplace(str: "Let us get back to more Coding", before: "Coding", after: "algorithms")     // Should return "Let us get back to more Algorithms"
