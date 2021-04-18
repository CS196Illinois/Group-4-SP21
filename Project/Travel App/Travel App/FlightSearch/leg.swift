//
//  Leg.swift
//  FlighSearch
//
//  Created by Harsh Agarwal on 20/03/21.
//

import Foundation
struct Leg: Codable {
    var CarrierIds: [Int]
    var OriginId: Int
    var DestinationId: Int
//    var DepatureDate: Date
}
