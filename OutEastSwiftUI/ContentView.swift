//
//  ContentView.swift
//  OutEastSwiftUI
//
//  Created by Xinyi Jiang on 12/2/19.
//  Copyright © 2019 Xinyi Jiang. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        List {
            CardView().listRowInsets(EdgeInsets())
            Spacer().frame(height: 20).background(ColorPalette.cloudGray).listRowInsets(EdgeInsets())
            CardView().listRowInsets(EdgeInsets())
            CardView().listRowInsets(EdgeInsets())
        }
        .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
        .background(Color.red)
    }
}

struct CardView: View {

    var body: some View {
        VStack(alignment: .leading) {
            Image("icybay")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 225)
                .clipped()
            Spacer()
                .frame(height: 25)
            Text("Bridgehampton North")
                .font(.custom("P22UndergroundMedium", size: 12))
                .kerning(1.13)
                .foregroundColor(ColorPalette.charcoalGray)
            Spacer()
                .frame(height: 10)
            Text("258 East Dune Rd, Bridgehampton")
                .font(.custom("P22UndergroundBook", size: 14))
                .foregroundColor(ColorPalette.almostBlack)
            Spacer()
                .frame(height: 10)
            Text("$125,000")
                .font(.custom("DomaineText-Medium", size: 30))
                .foregroundColor(ColorPalette.almostBlack)
            Spacer()
                .frame(height: 10)
            Text("(Memorial Day through Labor Day)")
                .font(.custom("P22UndergroundMedium", size: 12))
                .foregroundColor(ColorPalette.charcoalGray)
            FactsView().padding(EdgeInsets(top: 17, leading: 0, bottom: 24, trailing: 0))
        }

    }
}

struct FactView: View {
    let data: String
    let unit: String
    var body: some View {
        Text(data + " ")
            .font(.custom("P22UndergroundMedium", size: 12))
            .foregroundColor(ColorPalette.almostBlack)
        +
        Text(unit)
            .font(.custom("P22UndergroundBook", size: 12))
            .foregroundColor(ColorPalette.charcoalGray)
    }
}

struct FactsView: View {
    var body: some View {
        HStack(spacing: 20) {
            FactView(data: "6", unit: "Beds")
            FactView(data: "8.5", unit: "Baths")
            FactView(data: "2.7", unit: "Acres")
            FactView(data: "9.2K", unit: "Sq. Ft.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
