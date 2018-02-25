import Foundation

public extension String {
    func trimming() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
