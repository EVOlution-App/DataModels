import Foundation

public extension DataModels {
    public struct Implementation: Decodable {
        public let id: String?
        public let type: String?
        public let repository: String?
        public let account: String?
        
        enum StatusKeys: String, CodingKey {
            case id
            case type
            case repository
            case account
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StatusKeys.self)

            id          = try container.decodeIfPresent(String.self, forKey: .id)
            type        = try container.decodeIfPresent(String.self, forKey: .type)
            repository  = try container.decodeIfPresent(String.self, forKey: .repository)
            account     = try container.decodeIfPresent(String.self, forKey: .account)
        }
    }
}
