//
//  ResultVIew.swift
//  FlighSearch
//
//  Created by Harsh Agarwal on 28/03/21.
//

import SwiftUI

struct ResultView:  View {
    var resultQuote: Quote
    var resultPlace: Place
    var resultCarrier: Carrier
    var body: some View {
        VStack(spacing: 5) {
            HStack(spacing: 10) {
                Text("FROM")
                Text("TO")
            }
            HStack(spacing: 10) {
                Text("\(resultQuote.outboundLeg.DestinationId) \(resultQuote.inboundLeg.DestinationId)")
            }
        }
        HStack(spacing: 10) {
            Text("Destination")
            Text("\(resultPlace.Name)")
        }
        VStack(spacing: 5) {
            HStack(spacing: 10) {
                Text("Departure Date")
                Text("Return Date")
            }
            HStack(spacing: 10) {
                Text("\(resultQuote.outboundLeg.DepatureDate) \(resultQuote.inboundLeg.DepatureDate)")
            }
        }
        VStack(spacing: 5) {
            HStack(spacing: 10) {
                Text("Minimum Fare: ")
                Text("\(resultQuote.minPrice)")
            }
            HStack(spacing: 10) {
                Text("Carrier name: ")
                Text("\(resultCarrier.Name)")
            }
        }
        
    }
}
