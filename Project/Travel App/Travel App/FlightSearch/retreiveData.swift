//
//  retreiveData.swift
//  FlighSearch
//
//  Created by Harsh Agarwal on 20/03/21.
//

import Foundation
func getDataQuotes()->[Quote] {
    if let path = Bundle.main.path(forResource: "flightsData", ofType: "json") {
                do {
                    let dataString = try String(contentsOfFile: path)
                    let data = dataString.data(using: .utf8)!
                    let jsonResult = try JSONDecoder().decode(ResultObject.self, from: data)
                    return jsonResult.Quotes
                } catch {
                    print("Error: \(error.localizedDescription)")
                }
    }
    return []
}
func getDataPlaces()->[Place] {
    if let path = Bundle.main.path(forResource: "flightsData", ofType: "json") {
                do {
                    let dataString = try String(contentsOfFile: path)
                    let data = dataString.data(using: .utf8)!
                    let jsonResult = try JSONDecoder().decode(ResultObject.self, from: data)
                    return jsonResult.Places
                } catch {
                    print("Error: \(error.localizedDescription)")
                }
    }
    return []
}

func getDataCarriers()->[Carrier] {
    if let path = Bundle.main.path(forResource: "flightsData", ofType: "json") {
                do {
                    let dataString = try String(contentsOfFile: path)
                    let data = dataString.data(using: .utf8)!
                    let jsonResult = try JSONDecoder().decode(ResultObject.self, from: data)
                    return jsonResult.Carriers
                } catch {
                    print("Error: \(error.localizedDescription)")
                }
    }
    return []
}

func getPlaceForId(id: Int, places: [Place]) -> Place? {
    for place in places {
        if place.PlaceId == id {
            return place
        }
    }
    return nil
}

func getCarrierForId(id: Int, carrriers: [Carrier]) -> Carrier? {
    for carrier in carrriers {
        if carrier.CarrierId == id {
            return carrier
        }
    }
    return nil
}

func getDestinationForId(id: Int, inboundleg: Leg) -> Leg? {
        if inboundleg.DestinationId == id {
            return inboundleg
        }
    return nil
}


