import Foundation
import Meow

public final class Person: Model {
    public var _id = ObjectId()
    public var _createdAt = Date()
    public var _updatedAt = Date()
    
    public var name: String?
    public var link: String?
    
    public init() {}
}



