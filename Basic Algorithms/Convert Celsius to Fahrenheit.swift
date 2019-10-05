func convertToF(celsius: Int) -> Int {
    let fahrenheit = (celsius * 9 / 5) + 32

    return fahrenheit
}

convertToF(celsius: 0)      // Should return a number
convertToF(celsius: -30)    // Should return a value of -22
convertToF(celsius: -10)    // Should return a value of 14
convertToF(celsius: 0)      // Should return a value of 32
convertToF(celsius: 20)     // Should return a value of 68
convertToF(celsius: 30)     // Should return a value of 86
