import Foundation
import Meow

public final class Warning: Model {
    public var _id = ObjectId()
    public var createdAt = Date()
    public var updatedAt = Date()
    
    public var message: String?
    public var stage: String?
    public var kind: String?
    
    public init() {}
}


