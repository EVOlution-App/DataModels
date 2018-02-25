import Foundation
import Meow

public final class Status: Model {
    public var _id = ObjectId()
    public var _createdAt = Date()
    public var _updatedAt = Date()
    
    public var version: String?
    public var state: String?
    public var start: String?
    public var end: String?    
}
