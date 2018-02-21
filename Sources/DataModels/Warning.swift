import Foundation
import Config

public extension DataModels {
    public struct Warning: Codable {
        let message: String?
        let stage: String?
        let kind: String?
        
        enum Keys: String, CodingKey {
            case message
            case stage
            case kind
        }

        public init(from decoder: Decoder) throws {
            let container   = try decoder.container(keyedBy: Keys.self)

            message = try container.decodeIfPresent(String.self, forKey: .message)
            stage   = try container.decodeIfPresent(String.self, forKey: .stage)
            kind    = try container.decodeIfPresent(String.self, forKey: .kind)
        }
    }
}
