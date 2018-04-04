import Foundation
import Meow

public final class App: Model {
    public var _id = ObjectId()
    public var createdAt: Date?
    public var updatedAt: Date?

    public var name: String?
    public var key: String?
    
    public init() {}
}
