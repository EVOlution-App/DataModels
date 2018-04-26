import Foundation
import Meow
import BSON

public final class Notification: Model {
    public var _id = ObjectId()

    public var app          : Reference<App>?
    public var category     : ActionType?
    public var object       : ObjectId?
    public var relation     : RelationType?

    // OneSignal values
    public var onesignal    : String?
    public var recipients   : Int?
    
    public var createdAt: Date?
    
    public init() {}
}
