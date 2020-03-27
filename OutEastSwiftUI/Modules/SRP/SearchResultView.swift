//
//  ContentView.swift
//  OutEastSwiftUI
//
//  Created by Xinyi Jiang on 12/2/19.
//  Copyright © 2019 Xinyi Jiang. All rights reserved.
//

import SwiftUI

struct ContentView: View {



    init() {
        // To remove only extra separators below the list:
        UITableView.appearance().tableFooterView = UIView()

        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
    }


    var body: some View {
        List {
            ListingCard(model: models[0]).listRowInsets(EdgeInsets()).listRowBackground(ColorPalette.cloudGray)


        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        .background(ColorPalette.cloudGray)
        .edgesIgnoringSafeArea(.bottom)
    }

    private let models: [ListingCard.ListingCardModel] = [
        ListingCard.ListingCardModel(imageURLs: [URL(string: "https://uploaded-images.outeast.com/uploads/image/file/1768032/Jeff_20altered_20main.jpg")!],
                                     townName: "East Hampton",
                                     address: "26 Dune Ln, East Hampton",
                                     price: "$3,895,000",
                                     rentalPeriod: "(June/July)",
                                     details: [(data: "3", unit: "Beds"),
                                               (data: "3", unit: "Baths"),
                                               (data: "--", unit: "Acres"),
                                               (data: "2K", unit: "Sq. Ft.")],
                                     isSaved: true)]
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
