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
                    let dataString = try String(contentsOfFile: path)
                    let data = dataString.data(using: .utf8)!
                    let jsonResult = try JSONDecoder().decode(ResultObject.self, from: data)
                    return jsonResult.Quotes
                } catch {
                    print("Error: \(error.localizedDescription)")
                }
        
        //        let str = "{\"names\": [\"Bob\", \"Tim\", \"Tina\"]}"
        //        let data = Data(str.utf8)
        //
        //        do {
        //            // make sure this JSON is in the format we expect
        //            if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
        //                // try to read out a string array
        //                if let names = json["names"] as? [String] {
        //                    print(names)
        //                }
        //            }
        //        } catch let error as NSError {
        //            print("Failed to load: \(error.localizedDescription)")
        //        }
        
//        do {
//            let dataString = try String(contentsOfFile: path)
//            let data = Data(dataString.utf8)
//            let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
//            if let jsonResultQuote = jsonResult as? Dictionary<String, AnyObject> {
//                if let quote = jsonResultQuote["Quotes"] as? [AnyObject] {
//                    if let quoteArr = try JSONDecoder().decode([Quote].self, from: quote) {
//                        return quoteArr
//                    }
//
//                }
//            }
//        } catch {
//            // What to catch ?
//        }
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

