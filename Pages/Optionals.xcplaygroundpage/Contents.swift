//: [Previous](@previous)
/*:
# It's time for Philosopy with Bob!
*/
import UIKit
let image = UIImage(named: "philosoraptor_light_blue_large.jpg")

/*:
### What should a function do if failure is a possibility?
1. Return the value, but throw an exception on a failure
2. Return the value, which may be nil upon failure
3. Place the value your caller needs into a "present" which they must unwrap to receive
*/

//: #3 is the only one that feels like Christmas

//: It is also the only one where your caller's code cannot be written as if failure can't happen

//: [Next](@next)
