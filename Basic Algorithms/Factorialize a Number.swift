func factorialize(num: Int) -> Int {
    var total = 1

    if (num == 0) { return 1 }

    for i in 1...num {
        total *= i
    }

    return total
}

factorialize(num: 5)    // Should return 120
factorialize(num: 10)   // Should return 3628800
factorialize(num: 20)   // Should return 2432902008176640000
factorialize(num: 0)    // Should return 1
