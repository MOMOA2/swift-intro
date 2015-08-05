//: [Previous](@previous)
/*:
# Reference vs. Value types - who cares?

## Reference types (declared with 'class')
* Can interop with Objective-C code (with @objc qualifier)
* Are "reference counted" (ARC)
* Methods are mutating - which doesn't play well with functional paradigms
* Allows for subclassing
*/

class MyRef {
    var one: Int = 7
    var two: String = "Hello"
    
    func foo() {
        self.one = 9
        self.two = "There"
    }
}

let c = MyRef()
print(c.one)
print(c.two)

c.foo()
print(c.one)
print(c.two)



/*:
## Value types (declared with 'struct')
* Can NOT interoperate with Objective-C code (won't accept @objc qualifier)
* You cannot obtain a reference to it (copied on assignment)
* Is immutable when assigned with 'let', but can be mutable when assigned with 'var'
* Methods are by default non-mutating.  You have to declare them as mutating
* Does not allow for subclassing
*/

struct MyVal {
    var one: Int = 7
    var two: String = "Hello"
    
    mutating func foo() {
        self.one = 9
        self.two = "There"
    }
}

let v = MyVal()
print(v.one)
print(v.two)

v.foo()
print(v.one)
print(v.two)

//: [Next](@next)
