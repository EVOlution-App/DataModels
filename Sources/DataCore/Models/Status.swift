import Foundation

public extension DataModels {
    public struct Status: Decodable {
        public let version: String?
        public let state: String?
        public let start: Date?
        public let end: Date?
        
        enum Keys: String, CodingKey {
            case version
            case state
            case start
            case end
        }

        public init(from decoder: Decoder) throws {
            let container   = try decoder.container(keyedBy: Keys.self)

            version         = try container.decodeIfPresent(String.self, forKey: .version)
            state           = try container.decode(String.self, forKey: .state)
            
            let dateFormatter = Config.Date.Formatter.yearMonthDay

            if let startDate = try container.decodeIfPresent(String.self, forKey: .start) {
                start = dateFormatter.date(from: startDate)
            }
            else {
                start = nil
            }
            
            if let endDate = try container.decodeIfPresent(String.self, forKey: .end) {
                end = dateFormatter.date(from: endDate)
            }
            else {
                end = nil
            }
        }
    }
}
