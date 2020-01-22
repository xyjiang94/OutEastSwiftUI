import Foundation
import SwiftUI

struct ListingCard: View {

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Image("icybay")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 225)
                    .clipped()

                VStack(alignment: .leading) {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Text("Bridgehampton North")
                                .font(.custom("P22UndergroundMedium", size: 12))
                                .kerning(1.13)
                                .foregroundColor(ColorPalette.charcoalGray)
                                .padding(.bottom, 10)
                            Text("258 East Dune Rd, Bridgehampton")
                                .font(.custom("P22UndergroundBook", size: 14))
                                .foregroundColor(ColorPalette.almostBlack)
                        }
                        Spacer()
                        Image("saved")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        .frame(width: 28, height: 25)
                    }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -10))

                    Text("$125,000")
                        .font(.custom("DomaineText-Medium", size: 30))
                        .foregroundColor(ColorPalette.almostBlack)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    Text("(Memorial Day through Labor Day)")
                        .font(.custom("P22UndergroundMedium", size: 12))
                        .foregroundColor(ColorPalette.charcoalGray)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 17, trailing: 0))
                    FactsView()
                }.padding(EdgeInsets(top: 25, leading: 25, bottom: 24, trailing: 25))
            }
            .background(Color.white)
            .shadow(color: ColorPalette.stoneGray.opacity(0.25), radius: 10, x: 0, y: 4)

            Spacer()
                .frame(height: 20)
                .foregroundColor(ColorPalette.charcoalGray)
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

    let dot = Text("  •  ")
        .font(.custom("P22UndergroundBook", size: 12))
        .foregroundColor(ColorPalette.charcoalGray)

    var body: some View {
        HStack {
            FactView(data: "6", unit: "Beds")
            dot
            FactView(data: "8.5", unit: "Baths")
            dot
            FactView(data: "2.7", unit: "Acres")
            dot
            FactView(data: "9.2K", unit: "Sq. Ft.")
        }
    }
}
