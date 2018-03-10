import Foundation
import Meow

public final class Warning: Model {
    public var _id = ObjectId()
    public var _createdAt = Date()
    public var _updatedAt = Date()
    
    public var message: String?
    public var stage: String?
    public var kind: String?
    
    public init() {}
}


