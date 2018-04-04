import Foundation
import Meow

public final class Person: Model {
    public var _id = ObjectId()
    public var createdAt = Date()
    public var updatedAt = Date()
    
    public var name: String?
    public var link: String?
    public var username: String?
    public var associatedNames: [String]?
    
    public init() {}
}
