//
//  Currency.swift
//  FlighSearch
//
//  Created by Harsh Agarwal on 20/03/21.
//

import Foundation
struct Currency: Codable {
    var Code: String
    var Symbol: String
    var ThousandsSeparator: String
    var DecimalSeparator: String
    var SymbolOnLeft: Bool
    var SpaceBetweenAmountAndSymbol: Bool
    var RoundingCoefficient: Int
    var DecimalDigits: Int
}
