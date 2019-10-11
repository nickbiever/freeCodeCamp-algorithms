func booWho(bool: Any) -> Bool {
    return type(of: bool) == Bool.self ? true : false
}

booWho(bool: true)          // Should return true
booWho(bool: false)         // Should return true
booWho(bool: [1, 2, 3])     // Should return false
booWho(bool: ["a" : 1])     // Should return false
booWho(bool: 1)             // Should return false
booWho(bool: "a")           // Should return false
booWho(bool: "true")        // Should return false
booWho(bool: "false")       // Should return false
