import Foundation
import SwiftUI

struct ListingCard: View {

    var model: ListingCardModel

    struct ListingCardModel {
        let imageURLs: [URL]
        let townName: String
        let address: String?
        let price: String?
        let rentalPeriod: String?
        let details: [(data: String, unit: String)]
        let isSaved: Bool
    }

    var body: some View {

        VStack {
            VStack(alignment: .leading) {
                URLImage(withURL: model.imageURLs[0], placeholder: UIImage())
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 225)
                    .clipped()

                VStack(alignment: .leading) {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Text(model.townName)
                                .font(Font.custom("P22UndergroundMedium", size: 12))
                                .kerning(1.13)
                                .foregroundColor(ColorPalette.charcoalGray)
                                .padding(.bottom, 10)
                            Text(model.address ?? "")
                                .font(Font.custom("P22UndergroundBook", size: 14))
                                .foregroundColor(ColorPalette.almostBlack)
                        }
                        Spacer()
                        Button(action: {
                            NSLog("fav button tapped")
                        }) {
                            Image(self.model.isSaved ? "saved" : "unsaved")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 28, height: 25)
                        }
                    }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -10))

                    Text(model.price ?? "")
                        .font(Font.custom("DomaineText-Medium", size: 30))
                        .foregroundColor(ColorPalette.almostBlack)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    Text(model.rentalPeriod ?? "")
                        .font(Font.custom("P22UndergroundMedium", size: 12))
                        .foregroundColor(ColorPalette.charcoalGray)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 17, trailing: 0))
                    FactsView(facts: model.details)
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

    var facts: [(data: String, unit: String)]

    let dot = Text("  •  ")
        .font(.custom("P22UndergroundBook", size: 12))
        .foregroundColor(ColorPalette.charcoalGray)

    var body: some View {
        HStack {
            ForEach(0..<facts.count) { index -> FactView in
                let fact = self.facts[index]
                return FactView(data: fact.data, unit: fact.unit)
            }
        }
    }
}
