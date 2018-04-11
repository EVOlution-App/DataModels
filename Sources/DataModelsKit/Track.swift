import Foundation
import Meow

public final class Track: Model {
    public var _id = ObjectId()
    
    public var notification : Reference<Notification>?
    public var user         : Reference<User>?
    public var createdAt    : Date?
    
    public init() {}
}
