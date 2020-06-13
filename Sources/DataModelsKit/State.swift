import Foundation

public enum State: String, Codable {
    case awaitingReview         = ".awaitingReview"
    case scheduledForReview     = ".scheduledForReview"
    case activeReview           = ".activeReview"
    case returnedForRevision    = ".returnedForRevision"
    case withdrawn              = ".withdrawn"
    case deferred               = ".deferred"
    case accepted               = ".accepted"
    case acceptedWithRevisions  = ".acceptedWithRevisions"
    case rejected               = ".rejected"
    case implemented            = ".implemented"
    case previewing             = ".previewing"
    case error                  = ".error"
}

extension State: CustomStringConvertible {
    public var description: String {
        switch self {
        case .awaitingReview:           return "Awaiting Review"
        case .scheduledForReview:       return "Scheduled for Review"
        case .activeReview:             return "Active Review"
        case .returnedForRevision:      return "Returned for Revision"
        case .withdrawn:                return "Withdrawn"
        case .deferred:                 return "Deferred"
        case .accepted:                 return "Accepted"
        case .acceptedWithRevisions:    return "Accepted with Revisions"
        case .rejected:                 return "Rejected"
        case .implemented:              return "Implemented"
        case .error:                    return "Error"
        case .previewing:               return "Previewing"
        }
    }
}
