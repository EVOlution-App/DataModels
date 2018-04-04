import Foundation
import Meow

public enum ActionType: String, Codable {
    case followPerson
    case starProposal
    case watchProposal
    case proposalCreated
    case authorAdded
    case reviewManagerDefined
    case reviewManagerChanged
    case reviewManagerAdded
    case statusCreated
    case statusChanged
    case bugAdded
    case bugOpen
    case bugResolved
    case bugClosed
    case bugInProgress
    case implmentationAdded
}

public enum RelationType: String, Codable {
    case bug
    case person
    case status
    case proposal
}

public final class Action: Model {
    public var _id = ObjectId()
    public var createdAt = Date()
    public var updatedAt = Date()
    
    public var user: Reference<Person>?

    public var actionID: ObjectId?
    public var actionType: ActionType?
    
    public var relationID: ObjectId?
    public var relationType: RelationType?
    
    public var note: String?
    
    public init() {}
}


