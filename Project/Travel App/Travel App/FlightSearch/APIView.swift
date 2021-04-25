//
//  ContentView.swift
//  FlighSearch
//
//  Created by Harsh Agarwal on 20/03/21.
//

import SwiftUI

struct ApiView: View {
    @State private var resultsQuote: [Quote] = getDataQuotes()
    @State private var resultsCarrier: [Carrier] = getDataCarriers()
    @State private var resultsPlace: [Place] = getDataPlaces()
    var body: some View {
        List {
            ForEach(0 ..< resultsQuote.count, id: \.self){ index in
                let resultq = resultsQuote[index]
                let resultDepartureLocation = getPlaceForId(id: resultq.OutboundLeg.OriginId, places: resultsPlace) ?? resultsPlace[0]
                let resultArrivalLocation = getDestinationForId(id: resultq.InboundLeg.DestinationId, inboundleg: resultq.InboundLeg) ?? resultq
                    .InboundLeg
                let resultDepartureCarrier = getCarrierForId(id: resultq.OutboundLeg.CarrierIds[0], carrriers: resultsCarrier)  ?? resultsCarrier[0]
                ResultView(resultQuote: resultq, resultPlace: resultDepartureLocation, resultCarrier: resultDepartureCarrier, resultArrival: resultArrivalLocation)
            }
        }
    }
}

struct ApiView_Previews: PreviewProvider {
    static var previews: some View {
        ApiView()
    }
}
