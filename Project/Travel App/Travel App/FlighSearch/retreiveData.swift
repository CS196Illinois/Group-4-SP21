//
//  retreiveData.swift
//  FlighSearch
//
//  Created by Harsh Agarwal on 20/03/21.
//

import Foundation
func getDataQuotes()->[Quote] {
    
    /*let country: String
    let currency: String
    let locale: String
    let originPlace: String
    let destinationPlace: String
    let outboundPartialDate: String
    let inboundPartialDate: String
 */
    if let path = Bundle.main.path(forResource: "flightsData", ofType: "json") {
        do {
              let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
              let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
              if let jsonResultQuote = jsonResult as? Dictionary<String, AnyObject>, let quote = jsonResultQuote["Quotes"] as? [Quote] {
                        return quote
              }
          } catch {
               // What to catch ?
          }
    }
    return []
}
func getDataPlaces()->[Place] {
    /*let country: String
    let currency: String
    let locale: String
    let originPlace: String
    let destinationPlace: String
    let outboundPartialDate: String
    let inboundPartialDate: String
 */
    if let path = Bundle.main.path(forResource: "flightsData", ofType: "json") {
        do {
              let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
              if let jsonResultPlace = jsonResult as? Dictionary<String, AnyObject>, let place = jsonResultPlace["Places"] as? [Place] {
                        return place
              }
          } catch {
               // What to catch ?
          }
    }
    return []
}

func getDataCarriers()->[Carrier] {
    /*let country: String
    let currency: String
    let locale: String
    let originPlace: String
    let destinationPlace: String
    let outboundPartialDate: String
    let inboundPartialDate: String
 */
    if let path = Bundle.main.path(forResource: "flightsData", ofType: "json") {
        do {
              let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
              let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
              if let jsonResultCarrier = jsonResult as? Dictionary<String, AnyObject>, let carrier = jsonResultCarrier["Carriers"] as? [Carrier] {
                        return carrier
              }
          } catch {
               // What to catch ?
          }
    }
    return []
}

