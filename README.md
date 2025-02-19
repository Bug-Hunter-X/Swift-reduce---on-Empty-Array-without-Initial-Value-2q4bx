# Swift reduce() on Empty Array

This repository demonstrates a common error in Swift when using the `reduce` function with an empty array and no initial value.  The `reduce` function, while powerful for aggregating array elements, throws a runtime error if called on an empty array without a provided initial value. This can lead to unexpected crashes in your application.

The `bug.swift` file shows the problematic code, which results in a runtime error.  The `bugSolution.swift` file provides a solution demonstrating how to handle this case gracefully using optional chaining and nil-coalescing.