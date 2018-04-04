import Foundation
import Meow

public final class Device: Model {
    public var _id = ObjectId()
    public var createdAt: Date?
    public var updatedAt: Date?

    public var identifier: String?
    public var vendor:     String?
    public var test:       Bool = false
    public var subscribed: Bool = true
    public var os:         String?
    public var model:      String?
    public var tags:       [Tag]?
    public var language:   String?
    public var app:        Reference<App>?

    public init() {}
}
