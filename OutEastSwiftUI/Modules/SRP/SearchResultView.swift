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
            ListingCard().listRowInsets(EdgeInsets()).listRowBackground(ColorPalette.cloudGray)

            ListingCard().listRowInsets(EdgeInsets()).listRowBackground(ColorPalette.cloudGray)
            ListingCard().listRowInsets(EdgeInsets()).listRowBackground(ColorPalette.cloudGray)
        }
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        .background(ColorPalette.cloudGray)
//        .edgesIgnoringSafeArea(.bottom)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
