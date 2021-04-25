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
    var resultArrival : Leg
    var body: some View {
        ZStack {
            Color.orange.opacity(0.5)
            VStack(alignment: .leading) {
            HStack(spacing: 10) {
                Text("FROM").foregroundColor(.red).padding().font(.headline)
                Spacer()
                Text("TO").foregroundColor(.red).padding()
                    .font(.headline)
            }
                HStack() {
                    Text("\(resultPlace.Name)").bold().padding()
                Spacer()
                    Text("\(resultQuote.ArrivingName)").bold().padding()
            }
                Spacer()
                HStack() {
                    Text("Departing Code").foregroundColor(.red).padding()
                        .font(.headline)

                    Spacer()
                    Text("Arriving Code").foregroundColor(.red).padding()
                        .font(.headline)
                }
                Spacer()
                HStack() {
                    Text("\(resultPlace.PlaceId)").bold().padding()
                    Spacer()
                    Text("\(resultQuote.DestinationId)").bold().padding()
                   // Text("\(resultPlace.SkyscannerArrivingCode)").bold().padding()
                }
                Spacer()
                HStack() {
                    Text("Place Type").foregroundColor(.red).padding()
                        .font(.headline)
                    Spacer()
                    Text("\(resultPlace.PlaceType)").bold().padding()
                }
                HStack() {
                    Text("Minimum Fare: ").foregroundColor(.red).padding()
                    .font(.headline)
                    Text("$\(resultQuote.MinPrice)").bold().padding()
            }
            HStack() {
                Text("Carrier name: ").foregroundColor(.red).padding()
                    .font(.headline)
                Text("\(resultCarrier.Name)").bold().padding()
           }
        }
      }
           
    }
    }

