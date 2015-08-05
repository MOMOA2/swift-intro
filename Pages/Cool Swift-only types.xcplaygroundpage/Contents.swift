//: [Previous](@previous)
/*:
# Cool Swift types
### Tuples: Support naming of positional elements
*/

var httpResponse = (statusCode: 200, responseMessage: "OK")
if (httpResponse.statusCode == 200) {
    print("Success")
}

/*:
### Enums: Are super-amazingly functional
But you'll have to look these up yourself - for now, here is an example:
*/

import Foundation
enum RestResponse : CustomStringConvertible {
    case Success(Int, String, AnyObject?)
    case JSONSerializationFailure(NSError)
    case HTTPStatusCodeFailure(Int, String)
    case CouldNotConnectToURL(String)
    case SystemFailure(NSError)
    
    var description: String {
        get {
            switch(self) {
            case let .Success(statusCode, localizedMessage, _):
                return "Success(\(statusCode)): \(localizedMessage)"
            case let .JSONSerializationFailure(error):
                return "Failure in JSON serialization: \(error.localizedDescription)"
            case let .HTTPStatusCodeFailure(statusCode, localizedMessage):
                return "HTTP status code \(statusCode) indicated failure: \(localizedMessage)"
            case let .CouldNotConnectToURL(urlString):
                return "Could not connect to URL: \(urlString)"
            case let .SystemFailure(error):
                return "General system failure: \(error.localizedDescription)"
            }
        }
    }
}

var result = RestResponse.HTTPStatusCodeFailure(404, "Not Found")
print(result)

/*:
# Generics
* Collection Types (Array, Dictionary, Set)
* Both classes and structs can be generic types
* But Objective-c code cannot call a method in a swift type that references a generic
*/

//: [Next](@next)
