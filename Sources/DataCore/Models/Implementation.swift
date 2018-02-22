import Foundation

public extension DataModels {
    public struct Implementation: Decodable {
        public let id: String?
        public let type: String?
        public let repository: String?
        public let account: String?
    }
}
