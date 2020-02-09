func diffArray(arr1: Array<AnyHashable>, arr2: Array<AnyHashable>) -> Array<Any> {

    var difference = [Any]()

    func compare(arrA: Array<AnyHashable>, arrB: Array<AnyHashable>) {
        for i in arrA {
            if (!arrB.contains(i)) {
                difference.append(i)
            }
        }
    }

    compare(arrA: arr1, arrB: arr2)
    compare(arrA: arr2, arrB: arr1)

    return difference
}

diffArray(arr1: ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], arr2: ["diorite", "andesite", "grass", "dirt", "dead shrub"])  // Should return ["pink wool"]
diffArray(arr1: ["andesite", "grass", "dirt", "pink wool", "dead shrub"], arr2: ["diorite", "andesite", "grass", "dirt", "dead shrub"])             // Should return ["diorite", "pink wool"]
diffArray(arr1: ["andesite", "grass", "dirt", "dead shrub"], arr2: ["andesite", "grass", "dirt", "dead shrub"])                                     // Should return []
diffArray(arr1: [1, 2, 3, 5], arr2: [1, 2, 3, 4, 5])                                                                                                // Should return [4]
diffArray(arr1: [1, "calf", 3, "piglet"], arr2: [1, "calf", 3, 4])                                                                                  // Should return ["piglet", 4]
diffArray(arr1: [], arr2: ["snuffleupagus", "cookie monster", "elmo"])                                                                              // Should return ["snuffleupagus", "cookie monster", "elmo"]
diffArray(arr1: [1, "calf", 3, "piglet"], arr2: [7, "filly"])       
