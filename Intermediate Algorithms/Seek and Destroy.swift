func destroyer(arr: Array<AnyHashable>, arguments: Array<AnyHashable>) -> Array<Any> {

    var leftOvers = [Any]()

    func terminate(arrA: Array<AnyHashable>, arrB: Array<AnyHashable>) {
        for i in arrA {
            if (!arrB.contains(i)) {
                leftOvers.append(i)
            }
        }
    }

    terminate(arrA: arr, arrB: arguments)

    return leftOvers
}

destroyer(arr: [1, 2, 3, 1, 2, 3], arguments: [2, 3])       // Should return [1, 1]
destroyer(arr: [1, 2, 3, 5, 1, 2, 3], arguments: [2, 3])    // Should return [1, 5, 1]
destroyer(arr: [3, 5, 1, 2, 2], arguments: [2, 3, 5])       // Should return [1]
destroyer(arr: [2, 3, 2, 3], arguments: [2, 3])             // Should return []
destroyer(arr: ["tree", "hamburger", 53], arguments: ["tree", 53])  // Should return ["hamburger"]
destroyer(arr: ["possum", "trollo", 12, "safari", "hotdog", 92, 65, "grandma", "bugati", "trojan", "yacht"], arguments: ["yacht", "possum", "trollo", "safari", "hotdog", "grandma", "bugati", "trojan"])   // Should return [12,92,65]
