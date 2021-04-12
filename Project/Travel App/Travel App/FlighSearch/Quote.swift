//
//  Quote.swift
//  FlighSearch
//
//  Created by Harsh Agarwal on 20/03/21.
//

import Foundation
 
struct Quote: Codable {
    var QuoteId: Int
    var minPrice: Int
    var Direct: Bool
    var outboundLeg: Leg
    var inboundLeg: Leg
}
