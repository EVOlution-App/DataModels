import Foundation
import Meow

public final class User: Model {
    public var _id = ObjectId()
    public var createdAt: Date?
    public var updatedAt: Date?
    
    public var identifier: String?
    public var tags:       [Tag]?
    
    public init() {}
}
