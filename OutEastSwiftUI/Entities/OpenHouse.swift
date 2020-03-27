import Foundation

public struct OpenHouse: Equatable {

    public enum Visibility: String, Codable {
        case global = "global"
        case professionalsOnly = "professionals-only"
    }

    public let startDate: Date
    public let endDate: Date
    public let byAppointmentOnly: Bool
    public let visibility: Visibility

    public init(startDate: Date,
                endDate: Date,
                byAppointmentOnly: Bool,
                visibility: Visibility) {
        self.startDate = startDate
        self.endDate = endDate
        self.byAppointmentOnly = byAppointmentOnly
        self.visibility = visibility
    }
}
