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

