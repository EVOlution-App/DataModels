import Foundation
import Meow

public final class Notification: Model {
    public var _id = ObjectId()
    
    public var title    : String?
    public var subtitle : String?
    public var body     : String?
    public var delivered: Bool = false
    public var category : ActionType?
    public var payload  : Document?
    
    public var createdAt: Date?
    
    public init() {}
}
