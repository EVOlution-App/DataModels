import Foundation

public extension DataModels {
    public struct Proposal: Decodable {
        public let id: String?
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
    }
}
