public struct SearchResults {

    public let results: [SearchResultsListing]
    public let searchId: Int
    public let totalResults: Int

    public static var empty: SearchResults {
        return .init(results: [], totalResults: 0, searchId: 0)
    }

    public var isEmpty: Bool {
        return results.isEmpty
    }

    public init(results: [SearchResultsListing], totalResults: Int, searchId: Int) {
        self.results = results
        self.totalResults = totalResults
        self.searchId = searchId
    }

    public subscript(index: Int) -> SearchResultsListing {
        return results[index]
    }

    public func update(listing: SearchResultsListing, at index: Int) -> SearchResults {
        var newResults = results
        newResults[index] = listing
        return SearchResults(results: newResults, totalResults: totalResults, searchId: searchId)
    }
}
