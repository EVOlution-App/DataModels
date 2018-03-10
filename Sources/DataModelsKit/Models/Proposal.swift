import Foundation
import Meow

public final class Proposal: Model {
    public var _id = ObjectId()
    public var _createdAt = Date()
    public var _updatedAt = Date()
    
    public var id: Int?
    public var title: String?
    public var status: Reference<Status>?
    public var summary: String?
    public var authors: [Reference<Person>]?
    public var warnings: [Warning]?
    public var link: String?
    public var reviewManager: Reference<Person>?
    public var sha: String?
    public var bugs: [Reference<Bug>]?
    public var implementation: [Reference<Implementation>]?
    
    public init() {}
}

extension Proposal: CustomStringConvertible {
    public var description: String {
        guard let id = self.id else {
            return "SE-NNNN"
        }

        return String(format: "SE-%04i", id)
    }
}
