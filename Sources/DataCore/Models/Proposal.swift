import Foundation

public extension DataModels {
    public struct Proposal: Decodable {
        public let id: Int?
        public let title: String?
        public let status: Status?
        public let summary: String?
        public let authors: [Person]?
        public let warnings: [Warning]?
        public let link: String?
        public let reviewManager: Person?
        public let sha: String?
        public let bugs: [Bug]?
        public let implementation: [Implementation]?
        
        enum Keys: String, CodingKey {
            case status
            case summary
            case authors
            case id
            case title
            case warnings
            case link
            case reviewManager
            case sha
            case trackingBugs
            case implementation
        }

        public init(from decoder: Decoder) throws {
            let container           = try decoder.container(keyedBy: Keys.self)
            
            self.id                 = try container.decodeIfPresent(Int.self, forKey: .id)
            self.title              = try container.decodeIfPresent(String.self, forKey: .title)
            self.status             = try container.decodeIfPresent(Status.self, forKey: .status)
            self.summary            = try container.decodeIfPresent(String.self, forKey: .summary)
            self.authors            = try container.decodeIfPresent([Person].self, forKey: .authors)
            self.warnings           = try container.decodeIfPresent([Warning].self, forKey: .warnings)
            self.link               = try container.decodeIfPresent(String.self, forKey: .link)
            self.reviewManager      = try container.decodeIfPresent(Person.self, forKey: .reviewManager)
            self.sha                = try container.decodeIfPresent(String.self, forKey: .sha)
            self.bugs               = try container.decodeIfPresent([Bug].self, forKey: .trackingBugs)
            self.implementation     = try container.decodeIfPresent([Implementation].self, forKey: .implementation)
        }
    }
}
