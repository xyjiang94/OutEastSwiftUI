public enum ListingPrice: Equatable {
    case fixed(price: Int?)
    case periodBased(prices: [PeriodPrice])

    public var defaultPriceForDisplay: Int? {
        switch self {
        case .fixed(let price):
            return price
        case .periodBased(let prices):
            return prices.defaultPriceForDisplay?.price
        }
    }
}

/// Listing prices based on rental periods
public struct PeriodPrice: Equatable {
    public let period: RentalPeriod
    public let price: Int

    public init(period: RentalPeriod, price: Int) {
        self.period = period
        self.price = price
    }
}

// MARK: - Convenience Method

public extension Array where Element == PeriodPrice {

    /// This property will return a price from the array when we need to display a single price
    /// but we have no basis for selecting one (e.g. in the SRP if the user has not selected a period filter)
    var defaultPriceForDisplay: PeriodPrice? {
        let periodsInPriorityOrder: [RentalPeriod] = [.memorialDayToLaborDay,
                                                      .juneAndJuly,
                                                      .julyToLaborDay,
                                                      .augustToLaborDay,
                                                      .june,
                                                      .july,
                                                      .extendedSeason,
                                                      .shortTerm,
                                                      .yearRound,
                                                      .winter]
        func priority(of period: RentalPeriod) -> Int { return periodsInPriorityOrder.firstIndex(of: period)! }
        let sortedPrices = self.sorted { priority(of: $0.period) < priority(of: $1.period) }
        return sortedPrices.first
    }
}
