import Foundation

public struct MQ {
    public struct Message: Codable {
        public var user: String?
        
        public var actionID: String?
        public var actionType: ActionType?
        
        public var relationID: String?
        public var relationType: RelationType?
    
	    public init() {}
    }
}
