import Foundation
import Meow

public final class Implementation: Model {
    public var _id = ObjectId()
    public var _createdAt = Date()
    public var _updatedAt = Date()
    
    public var id: String?
    public var type: String?
    public var repository: String?
    public var account: String?
    
    public init() {}
}
