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
            Text("Hi")
            ForEach(0 ..< resultsQuote.count, id: \.self){ index in
                let resultq = resultsQuote[index]
                let resultca = resultsCarrier[index]
                let resultp = resultsPlace[index]
                ResultView(resultQuote: resultq, resultPlace: resultp, resultCarrier: resultca)
            }
        }
    }
}

struct ApiView_Previews: PreviewProvider {
    static var previews: some View {
        ApiView()
    }
}
