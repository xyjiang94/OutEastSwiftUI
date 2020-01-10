//
//  ColorPavarte.swift
//  OutEastSwiftUI
//
//  Created by Xinyi Jiang on 1/10/20.
//  Copyright © 2020 Xinyi Jiang. All rights reserved.
//

import SwiftUI

struct ColorPalette {

    // MARK: - Grays

    /// (32, 32, 32) #202020
    static var almostBlack: Color {
        return createColor(red: 32, green: 32, blue: 32)
    }

    /// (75, 79, 86) #4B4F56
    static var midnightGray: Color {
        return createColor(red: 75, green: 79, blue: 86)
    }

    /// (90, 90, 90) #5A5A5A
    static var charcoalGray: Color {
        return createColor(red: 90, green: 90, blue: 90)
    }

    /// (150, 152, 155) #96989B
    static var stoneGray: Color {
        return createColor(red: 150, green: 152, blue: 155)
    }

    /// (218, 220, 222) #DADCDE
    static var slateGray: Color {
        return createColor(red: 218, green: 220, blue: 222)
    }

    /// (243, 244, 244) #F3F4F4
    static var cloudGray: Color {
        return createColor(red: 243, green: 244, blue: 244)
    }

    /// (255, 255, 255) #FFFFFF
    static var white = UIColor.white

    // MARK: - Accent colors

    /// (248, 153, 17) #F89911
    static var peach: Color {
        return createColor(red: 248, green: 153, blue: 17)
    }

    /// (62, 128, 126) #3E807E
    static var deepSeaTeal: Color {
        return createColor(red: 62, green: 128, blue: 126)
    }

    /// (244, 85, 73) #F45549
    static var alertRed: Color {
        return createColor(red: 244, green: 85, blue: 73)
    }

    /// (124, 215, 96) #7CD760
    static var grassGreen: Color {
        return createColor(red: 124, green: 215, blue: 96)
    }

    // MARK: - Private

    static func createColor(red: Double, green: Double, blue: Double) -> Color{
        return Color(red: red / 255,
                     green: green / 255,
                     blue: blue / 255)
    }

}
