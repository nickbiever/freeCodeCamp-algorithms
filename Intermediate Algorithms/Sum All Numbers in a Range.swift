func sumAll(arr: Array<Int>) -> Int {
    var total = 0

    let a: Int! = arr.min()
    let b: Int! = arr.max()

    for i in a...b { total += i }

    return total
}

sumAll(arr: [1, 4])     // Should return 10
sumAll(arr: [4, 1])     // Should return 10
sumAll(arr: [5, 10])    // Should return 45
sumAll(arr: [10, 5])    // Should return 45
