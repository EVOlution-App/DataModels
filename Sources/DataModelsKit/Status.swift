import Foundation
import Meow

public final class Status: Model {
    public var _id = ObjectId()
    public var createdAt = Date()
    public var updatedAt = Date()
    
    public var version: String?
    public var state: String?
    public var start: Date?
    public var end: Date?
    
    public init() {}
}
