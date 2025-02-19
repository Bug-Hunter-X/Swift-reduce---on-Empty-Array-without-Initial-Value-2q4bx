let array = [1, 2, 3]
let sum = array.reduce(0, +)
print(sum) // Output: 6

let emptyArray: [Int] = []
let emptySum = emptyArray.reduce(0, +)
print(emptySum) // Output: 0

//This will cause a runtime error if the array is empty and no initial value is provided
let anotherEmptyArray: [Int] = []
//let anotherEmptySum = anotherEmptyArray.reduce(+) // Error: Cannot invoke 'reduce' with an argument list of type '(+)'