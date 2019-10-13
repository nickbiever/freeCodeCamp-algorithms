func frankenSplice(arr1: Array<Any>, arr2: Array<Any>, n: Int) -> Array<Any> {
    var frankenArray = arr2

    for i in 0..<arr1.count {
        frankenArray.insert(arr1[i], at: n + i)
    }

    return frankenArray
}

frankenSplice(arr1: [1, 2, 3], arr2: [4, 5], n: 1)                                              // Should return [4, 1, 2, 3, 5]
frankenSplice(arr1: [1, 2], arr2: ["a", "b"], n: 1)                                             // Should return ["a", 1, 2, "b"]
frankenSplice(arr1: ["claw", "tentacle"], arr2: ["head", "shoulders", "knees", "toes"], n: 2)   // Should return ["head", "shoulders", "claw", "tentacle", "knees", "toes"]
