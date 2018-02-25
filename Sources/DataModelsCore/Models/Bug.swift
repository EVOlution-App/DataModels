import Foundation
import Meow

public final class Bug: Model {
    public var _id = ObjectId()
    public var _createdAt = Date()
    public var _updatedAt = Date()
    
    public var id: String?
    public var status: String?
    public var updated: String?
    public var title: String?
    public var link: String?
    public var radar: String?
    public var assignee: String?
    public var resolution: String?
    
//    init?(_ object: Models.Bug) {
//        if let value = object.id, value.trimming() != "" {
//            id = value
//        }
//
//        if let value = object["status"], value.trimming() != "" {
//            status = value
//        }
//
//        if let value = object["updated"], value.trimming() != "" {
//            updated = value
//        }
//
//        if let value = object["title"], value.trimming() != "" {
//            updated = value
//        }
//
//        if let value = object["link"], value.trimming() != "" {
//            updated = value
//        }
//
//        if let value = object["radar"], value.trimming() != "" {
//            updated = value
//        }
//
//        if let value = object["assignee"], value.trimming() != "" {
//            updated = value
//        }
//
//        if let value = object["resolution"], value.trimming() != "" {
//            resolution = value
//        }
//    }
}

extension Bug: CustomStringConvertible {
    public var description: String {
        return String(format: "SR-\(String(describing: id))")
    }
}
