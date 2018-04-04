import Foundation
import Meow

public final class Bug: Model {
    public var _id = ObjectId()
    public var createdAt = Date()
    public var updatedAt = Date()
    
    public var id: String?
    public var status: String?
    public var updated: Date?
    public var title: String?
    public var link: String?
    public var radar: String?
    public var assignee: String?
    public var resolution: String?
    
    public init() {}
}

extension Bug: CustomStringConvertible {
    public var description: String {
        return String(format: "SR-\(String(describing: id))")
    }
}
