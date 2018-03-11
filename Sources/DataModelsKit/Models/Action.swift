import Foundation
import Meow

public enum ActionType: String, Codable {
    case star
    case follow
    case watch
    case creation
    case statusChanged
    case bugOpen
    case bugResolved
    case bugClosed
    case bugInProgress
}

public final class Action: Model {
    public var _id = ObjectId()
    public var _createdAt = Date()
    public var _updatedAt = Date()
    
    public var user: Reference<Person>?
    public var type: ActionType?
    public var targetID: ObjectId?
    public var note: String?
    
    public init() {}
}


