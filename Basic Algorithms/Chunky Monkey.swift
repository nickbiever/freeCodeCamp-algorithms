func chunkArrayInGroups(arr: Array<Any>, size: Int) -> Array<Any> {
    return stride(from: 0, to: arr.count, by: size).map {
        Array(arr[$0 ..< Swift.min($0 + size, arr.count)])
    }
}

chunkArrayInGroups(arr: ["a", "b", "c", "d"], size: 2)             // Should return [["a", "b"], ["c", "d"]
chunkArrayInGroups(arr: [0, 1, 2, 3, 4, 5], size: 3)               // Should return [[0, 1, 2], [3, 4, 5]]
chunkArrayInGroups(arr: [0, 1, 2, 3, 4, 5], size: 2)               // Should return [[0, 1], [2, 3], [4, 5]]
chunkArrayInGroups(arr: [0, 1, 2, 3, 4, 5], size: 4)               // Should return [[0, 1, 2, 3], [4, 5]]
chunkArrayInGroups(arr: [0, 1, 2, 3, 4, 5, 6], size: 3)            // Should return [[0, 1, 2], [3, 4, 5], [6]]
chunkArrayInGroups(arr: [0, 1, 2, 3, 4, 5, 6, 7, 8], size: 4)      // Should return [[0, 1, 2, 3], [4, 5, 6, 7], [8]]
chunkArrayInGroups(arr: [0, 1, 2, 3, 4, 5, 6, 7, 8], size: 2)      // Should return [[0, 1], [2, 3], [4, 5], [6, 7], [8]]
