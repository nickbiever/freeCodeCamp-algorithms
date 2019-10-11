func truncateString(str: String, num: Int) -> String {
    return str.count > num ? String(str.prefix(num)) + "..." : str
}

truncateString(str: "A-tisket a-tasket A green and yellow basket", num: 8)                                                          // Should return "A-tisket..."
truncateString(str: "Peter Piper picked a peck of pickled peppers", num: 11)                                                        // Should return "Peter Piper..."
truncateString(str: "A-tisket a-tasket A green and yellow basket", num: "A-tisket a-tasket A green and yellow basket".count)        // Should return "A-tisket a-tasket A green and yellow basket"
truncateString(str: "A-tisket a-tasket A green and yellow basket", num: "A-tisket a-tasket A green and yellow basket".count + 2)    // Should return "A-tisket a-tasket A green and yellow basket"
truncateString(str: "A-", num: 1)                                                                                                   // Should return "A..."
truncateString(str: "Absolutely Longer", num: 2)                                                                                    // Should return "Ab..."
