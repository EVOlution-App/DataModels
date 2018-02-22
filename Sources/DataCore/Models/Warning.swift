import Foundation
import Config

public extension DataModels {
    public struct Warning: Codable {
        public let message: String?
        public let stage: String?
        public let kind: String?
    }
}
