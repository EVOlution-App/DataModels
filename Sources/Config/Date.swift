import Foundation

public extension Config {
    public struct Date {
        public struct Formatter {
            public static var iso8601: DateFormatter {
                let formatter = DateFormatter()
                formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS"
                formatter.locale = Locale(identifier: "en_US")
                
                return formatter
            }
            
            public static var yearMonthDay: DateFormatter {
                let formatter = DateFormatter()
                formatter.dateFormat = "yyyy-MM-dd"
                formatter.locale = Locale(identifier: "en_US")
                
                return formatter
            }
            
            public static var monthDay: DateFormatter {
                let formatter = DateFormatter()
                formatter.dateFormat = "MMMM dd"
                formatter.locale = Locale(identifier: "en_US")
                
                return formatter
            }
        }
    }
}
