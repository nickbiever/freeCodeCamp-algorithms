func reversteString(str: String) -> String {
    var characters = Array(str)
    characters.reverse()

    return String(characters)

    // NOTE: String(str.reversed()) is a beter way to reverse a string.
}

reversteString(str: "hello")                    // Should become "olleh".
reversteString(str: "Howdy")                    // Should become "ydwoH".
reversteString(str: "Greetings from Earth")     // Shoud return "htraE morf sgniteerG"
