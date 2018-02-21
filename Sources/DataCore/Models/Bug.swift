import Foundation
import Config

public extension DataModels {
    public struct Bug: Codable {
        let id: String?
        let status: String?
        let updated: Date?
        let title: String?
        let link: String?
        let radar: String?
        let assignee: String?
        let resolution: String?
        
        enum Keys: String, CodingKey {
            case id
            case status
            case title
            case link
            case radar
            case resolution
            case assignee
            case updated
        }
        
        public init(from decoder: Decoder) throws {
            let container   = try decoder.container(keyedBy: Keys.self)

            self.id         = try container.decodeIfPresent(String.self, forKey: .id)
            self.status     = try container.decodeIfPresent(String.self, forKey: .status)
            self.title      = try container.decodeIfPresent(String.self, forKey: .title)
            self.link       = try container.decodeIfPresent(String.self, forKey: .link)
            self.radar      = try container.decodeIfPresent(String.self, forKey: .radar)
            self.assignee   = try container.decodeIfPresent(String.self, forKey: .assignee)
            self.resolution = try container.decodeIfPresent(String.self, forKey: .resolution)
            
            if let dateString = try container.decodeIfPresent(String.self, forKey: .updated) {
                let dateFormatter   = Config.Date.Formatter.iso8601
                self.updated        = dateFormatter.date(from: dateString)
            }
            else {
                self.updated = nil                
            }
        }
    }
}
