import Foundation
import Meow

public final class Tag: Model {
    public var _id = ObjectId()
    
    public var name: String?
    public var createdAt: Date?
    public var updatedAt: Date?

    public init() {}
}
