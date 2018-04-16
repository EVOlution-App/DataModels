import Foundation
import Meow

public final class Device: Model {
    public var _id = ObjectId()
    public var createdAt: Date?
    public var updatedAt: Date?

    public var token        : String?
    public var user         : Reference<User>?
    public var test         : Bool = false
    public var os           : String?
    public var model        : String?
    public var language     : String?
    public var app          : Reference<App>?

    public init() {}
}
