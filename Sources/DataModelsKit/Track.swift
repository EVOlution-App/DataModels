import Foundation
import Meow

public enum SourceTrack: String, Codable {
    case ios
    case macos
    case safari
    case chrome
}

public final class Track: Model {
    public var _id = ObjectId()
    
    public var notification : Reference<Notification>?
    public var user         : Reference<User>?
    public var source       : SourceTrack?
    public var createdAt    : Date?
    
    public init() {}
}
