func titleCase(str: String) -> String {
    var newString = str.components(separatedBy: " ")

    for i in 0..<newString.count {
        newString[i] = newString[i].prefix(1).uppercased() + newString[i].lowercased().dropFirst()
    }

    return newString.joined(separator: " ")
}

titleCase(str: "I'm a little tea pot")                 // Should return I'm A Little Tea Pot
titleCase(str: "sHoRt AnD sToUt")                       // Should return Short And Stout
titleCase(str: "HERE IS MY HANDLE HERE IS MY SPOUT")    // Should return Here Is My Handle Here Is My Spout
