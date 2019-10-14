func mutation(arr: Array<String>) -> Bool {

    var mutationBool: Bool = false

    for character in arr[1].lowercased() {
        mutationBool = arr[0].lowercased().range(of: String(character)) != nil ? true : false

        if (mutationBool == false) { break }
    }

    return mutationBool
}

mutation(arr: ["hello", "hey"])                          // Should return false
mutation(arr: ["hello", "Hello"])                        // Should return true
mutation(arr: ["zyxwvutsrqponmlkjihgfedcba", "qrstu"])   // Should return true
mutation(arr: ["Mary", "Army"])                          // Should return true
mutation(arr: ["Mary", "Aarmy"])                         // Should return true
mutation(arr: ["Alien", "line"])                         // Should return true
mutation(arr: ["floor", "for"])                          // Should return true
mutation(arr: ["hello", "neo"])                          // Should return false
mutation(arr: ["voodoo", "no"])                          // Should return false
