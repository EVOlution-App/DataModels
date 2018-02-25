import Foundation

struct GithubUserFormatter {
    static func format(_ content: String?) -> String? {
        guard let content = content else {
            return nil
        }
        
        let values = content.components(separatedBy: "/").filter { $0 != "" }
        if values.count > 0, let value = values.last {
            return value
        }

        return nil
    }
}
