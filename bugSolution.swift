let array = [1, 2, 3]
let sum = array.reduce(0, +)
print(sum) // Output: 6

let emptyArray: [Int] = []
let emptySum = emptyArray.reduce(0, +) //Safe even when empty
print(emptySum) // Output: 0

let anotherEmptyArray: [Int] = []
let anotherEmptySum = anotherEmptyArray.reduce(0, +) //Safe even when empty
print(anotherEmptySum) // Output: 0

//More robust approach using optional chaining and the nil-coalescing operator
func safeReduce<T, U>(array: [T], initial: U, combine: (U, T) -> U) -> U {
    return array.reduce(initial, combine)
}

let numbers = [1, 2, 3]
let safeSum = safeReduce(array: numbers, initial: 0, combine: +)
print(safeSum) // Output: 6

let emptyNumbers: [Int] = []
let safeEmptySum = safeReduce(array: emptyNumbers, initial: 0, combine: +)
print(safeEmptySum) // Output: 0