//
//  Quote.swift
//  FlighSearch
//
//  Created by Harsh Agarwal on 20/03/21.
//

import Foundation
 
struct Quote: Codable {
    var QuoteId: Int
    var DestinationId: Int
    var MinPrice: Int
    var Direct: Bool
    var ArrivingName: String
   // var SkyscannerArrivingCode: String
    var OutboundLeg: Leg
    var InboundLeg: Leg
}
