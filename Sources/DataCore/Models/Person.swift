import Foundation

public extension DataModels {
    public struct Person: Decodable {
        public let name: String?
        public let link: String?
        
        enum Keys: String, CodingKey {
            case name
            case link
        }
        
        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: Keys.self)
            
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.link = try container.decodeIfPresent(String.self, forKey: .link)
        }
    }
}

