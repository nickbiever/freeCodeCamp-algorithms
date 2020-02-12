func spinalCase(str: String) -> String {

    let regex = try! NSRegularExpression(pattern: "[A-Z\\s]+")
    let newStr = regex.stringByReplacingMatches(in: str, range: NSRange(1..<str.utf16.count), withTemplate: "$1-$0")
        .lowercased()
        .replacingOccurrences(of: "_", with: "")
        .replacingOccurrences(of: " ", with: "")

    return newStr
}

spinalCase(str: "This Is Spinal Tap")       //  Should return "this-is-spinal-tap"
spinalCase(str: "thisIsSpinalTap")          //  Should return "this-is-spinal-tap"
spinalCase(str: "The_Andy_Griffith_Show")   //  Should return "the-andy-griffith-show"
spinalCase(str: "Teletubbies say Eh-oh")    //  Should return "teletubbies-say-eh-oh"
spinalCase(str: "AllThe-small Things")      //  Should return "all-the-small-things"
