//: [Previous](@previous)
/*:
# Casting
### Can cast between related reference types
* AnyObject is semantically equivalent to NSObject (all Reference types inherit from it)
* Any is the base type for EVERYTHING (including Value types)
*/

class Vehicle {
    var Wheels: Int { get { return 0 } }
}

class Tricycle: Vehicle {
    override var Wheels: Int { get { return 3 } }
}

class Bicycle: Vehicle {
    override var Wheels: Int { get { return 2 } }
}

/*: 
'as!' operator: Will crash app it is fails
*/

var b: Vehicle = Bicycle()
print(b.Wheels)
var x: Bicycle = b as! Bicycle

/*:
'as?' operator: Returns an optional (or nil)
*/

var t: Vehicle = Tricycle()
print(t.Wheels)
var y: Bicycle? = t as? Bicycle

//: [Next](@next)
