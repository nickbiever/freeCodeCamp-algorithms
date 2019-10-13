func getIndexToIns(arr: Array<Int>, num: Int) -> Int {

    var testArray = arr
    testArray.append(num)
    testArray.sort()

    var arrayIndex = 0

    for i in 0..<testArray.count {
        if (testArray[i] == num) {
            arrayIndex = i

            break
        }
    }

    return arrayIndex
}

getIndexToIns(arr: [10, 20, 30, 40, 50], num: 35)     // Should return 3
getIndexToIns(arr: [10, 20, 30, 40, 50], num: 30)     // Should return 2
getIndexToIns(arr: [40, 60], num: 50)                 // Should return 1
getIndexToIns(arr: [3, 10, 5], num: 3)                // Should return 0
getIndexToIns(arr: [5, 3, 20, 3], num: 5)             // Should return 2
getIndexToIns(arr: [2, 20, 10], num: 19)              // Should return 2
getIndexToIns(arr: [2, 5, 10], num: 15)               // Should return 3
getIndexToIns(arr: [], num: 1)                        // Should return 0
