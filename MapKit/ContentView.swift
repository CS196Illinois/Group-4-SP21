//
//  ContentView.swift
//  itineraryio
//
//  Created by Ritvik Gandesiri on 3/22/21.
//

import SwiftUI
import UIKit
import MapKit


class Location: NSObject, MKAnnotation{
    var idenifier = "Popular Monuments"
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var descr: String?
    init(name:String, lat:CLLocationDegrees,long:CLLocationDegrees, description:String){
        title = name
        coordinate = CLLocationCoordinate2DMake(lat,long)
        descr = description
    }
}

class LocationList: NSObject {
    var Monuments = [Location]()
    override init(){
        Monuments += [Location(name: "Alma Mater", lat: 40.1099, long: -88.2284, description: "The Alma Mater, a bronze statue by sculptor Lorado Taft, is a beloved symbol of the University of Illinois at Urbana-Champaign.")]
        Monuments += [Location(name: "Golden Gate Bridge", lat: 37.8199, long: -122.4783, description: "The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean. ")]
        Monuments += [Location(name: "Statue of Liberty", lat: 40.6892, long: -74.0445, description: "The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean. ")]
    }
}


struct Place: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    var details: String
}
    
    
struct ContentView: View {
    // 1.
    let places = [
        Place(name: "Alma Mater", latitude: 40.1099, longitude: -88.2284, details: "The Alma Mater, a bronze statue by sculptor Lorado Taft, is a beloved symbol of the University of Illinois at Urbana-Champaign."),
        Place(name: "Golden Gate Bridge", latitude: 37.8199, longitude: -122.4783, details: "The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean."),
        Place(name: "Statue of Liberty", latitude: 40.6892, longitude: -74.0445, details: "The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor within New York City, in the United States."),
        Place(name: "Great Wall of China", latitude: 40.4319, longitude: 116.5704, details: "The Great Wall of China is a series of fortifications that were built across the historical northern borders of ancient Chinese states and Imperial China as protection against various nomadic groups from the Eurasian Steppe."),
        Place(name: "Taj Mahal", latitude:27.1751, longitude: 78.0421, details: "The Taj Mahal is an ivory-white marble mausoleum on the southern bank of the river Yamuna in the Indian city of Agra."),
        Place(name: "Sydney Opera Hours", latitude:-33.8568, longitude: 151.2153, details:"The Sydney Opera House is a multi-venue performing arts centre at Sydney Harbour located in Sydney, New South Wales, Australia.")
    ]

    
    // 2.
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.1099, longitude: -88.2284),
        span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100))
    
  
    var body: some View {
        // 3.
        Map(coordinateRegion: $region, annotationItems: places) { place in
            MapMarker(coordinate: place.coordinate)
            

        }
        .ignoresSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}







