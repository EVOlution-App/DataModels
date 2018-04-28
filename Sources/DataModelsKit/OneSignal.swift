import Foundation
import Meow

public final class OneSignal: Model {
    public var _id = ObjectId()
    
    public var key          : String?
    public var recipients   : Int?
    
    public init() {}
}
