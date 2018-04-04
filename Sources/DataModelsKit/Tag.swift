import Foundation
import Meow

public final class Tag: Model {
    public var _id = ObjectId()
    
    public var key: String?
    public var value: String?
    
    public init() {}
}
