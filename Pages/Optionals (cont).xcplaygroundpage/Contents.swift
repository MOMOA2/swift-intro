//: [Previous](@previous)
/*:
## The "present" is an Optional type
Nullable in .Net, Maybe in most functional languages
*/

//: Use ! postfix operator to unwrap (but look out, it isn't safe!)
var opt: Int?
opt = nil
if opt == nil {
    print("it's nil")
} else {
    print(opt!)
}

//: Use if let syntax to unwrap safely

if let actual = opt {
   print(actual)
} else {
    print("it was null")
}

//: Class and struct variables cannot be assigned the value 'nil'.  You must use optionals for that.

class MyClass {
    var one: Int = 7
}

var c: MyClass? = nil

/*:
This simple requirement has incredible implications!
* If you have an optional, you must unwrap it to use it's value
* If you don't have an optional it CANNOT be null.
* You no longer have to guess whether or not a class/struct parameter can be nil.
*/

//c = MyClass()

//: Unwrap operators ?. and ??
let canBeNull: Int? = c?.one
print(canBeNull)
let cantBeNull: Int = c?.one ?? 0
print(cantBeNull)


//: [Next](@next)
