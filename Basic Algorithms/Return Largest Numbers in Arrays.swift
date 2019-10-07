func largestOfFour(arr: Array<Array<Int>>) -> Array<Int> {

    var highestNumber: Int? = nil
    var highestNumberArray = [Int]()

    for index in arr {
        for number in index {
            if (highestNumber == nil) { highestNumber = number }    // Set a number if highest number is nil

            if (number > highestNumber!) {
                highestNumber = number
            }
        }
        highestNumberArray.append(highestNumber!)
        highestNumber = nil // Empty the highest number
    }

    return highestNumberArray
}

largestOfFour(arr: [[13, 27, 18, 26], [4, 5, 1, 3], [32, 35, 37, 39], [1000, 1001, 857, 1]])        // Should return [27, 5, 39, 1001]
largestOfFour(arr: [[4, 9, 1, 3], [13, 35, 18, 26], [32, 35, 97, 39], [1000000, 1001, 857, 1]])     // Should return [9, 35, 97, 1000000]
largestOfFour(arr: [[17, 23, 25, 12], [25, 7, 34, 48], [4, -10, 18, 21], [-72, -3, -17, -10]])      // Should return [25, 48, 21, -3]
