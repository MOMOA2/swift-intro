//: [Previous](@previous)
/*:
# Functions
*/

/*:
## Named functions - declared with 'func' keyword
*/

func myFunc(p1: Int, p2: String) -> Double {
    return Double(p1 + p2.characters.count)
}

myFunc(17, p2: "hello")

//: Named functions have special rules with parameters naming when calling the function

/*:
## Anonymous functions - closures can be stored in variables
*/

var myFunc = { (p1: Int, p2: String) -> Double in
    return Double(p1 + p2.characters.count)
}

myFunc(17, "hello")

//: Anonymous functions can choose to ignore the rules regarding parameter naming

/*:
Functions are typed variables
*/
typealias funcType = (Int, String) -> Double
let f: funcType = myFunc
f(17, "hello")


//: [Next](@next)
