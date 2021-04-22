//
//  ResultObject.swift
//  Travel App
//
//  Created by Matthew Geimer on 4/18/21.
//

import Foundation

struct ResultObject: Codable {
    var Quotes: [Quote]
    var Places: [Place]
    var Carriers: [Carrier]
}
