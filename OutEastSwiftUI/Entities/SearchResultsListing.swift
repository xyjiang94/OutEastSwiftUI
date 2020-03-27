import Foundation

public struct SearchResultsListing: Equatable {

    public let context: ListingContext
    public let id: Int
    public let imageURLs: [URL]
    public let townName: String
    public let subArea: String?
    public let address: String?
    public let price: ListingPrice
    public let beds: Int?
    public let baths: Int?
    public let halfBaths: Int?
    public let acreage: Double?
    public let sqft: String?
    public let openHouses: [OpenHouse]
    public let saved: Bool

    public init(context: ListingContext,
                id: Int,
                imageURLs: [URL],
                townName: String,
                subArea: String?,
                address: String?,
                price: ListingPrice,
                beds: Int?,
                baths: Int?,
                halfBaths: Int?,
                acreage: Double?,
                sqft: String?,
                openHouses: [OpenHouse],
                saved: Bool) {
        self.context = context
        self.id = id
        self.imageURLs = imageURLs
        self.townName = townName
        self.subArea = subArea
        self.address = address
        self.price = price
        self.beds = beds
        self.baths = baths
        self.halfBaths = halfBaths
        self.acreage = acreage
        self.sqft = sqft
        self.openHouses = openHouses
        self.saved = saved
    }

    public func toggleSaved() -> SearchResultsListing {
        return SearchResultsListing(context: context,
                                    id: id,
                                    imageURLs: imageURLs,
                                    townName: townName,
                                    subArea: subArea,
                                    address: address,
                                    price: price,
                                    beds: beds,
                                    baths: baths,
                                    halfBaths: halfBaths,
                                    acreage: acreage,
                                    sqft: sqft,
                                    openHouses: openHouses,
                                    saved: !saved)
    }
}
