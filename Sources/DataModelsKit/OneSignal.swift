import Foundation
import Meow

public final class OneSignal: Model {
    public var _id = ObjectId()
    
    public var onesignal    : String?
    public var recipients   : Int?
    
    public init() {}
}
