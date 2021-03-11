//
//  ContentView.swift
//  SwiftUIMapTypeTutorial
//
//  Created by Ritvik Gandesiri on 3/10/21.
//

import SwiftUI
import MapKit


struct MapViewUIKit: UIViewRepresentable {
    // 1.
    let region: MKCoordinateRegion
    let mapType : MKMapType
    
    // 2.
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.setRegion(region, animated: false)
        mapView.mapType = mapType
        return mapView
    }
    
    // 3.
    func updateUIView(_ mapView: MKMapView, context: Context) {
        mapView.mapType = mapType
    }
}

struct ContentView: View {
    // 1
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.61900, longitude: -74.14053) , span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    // 2
    @State private var mapType: MKMapType = .standard
        
    var body: some View {
        ZStack {
            // 3
            MapViewUIKit(region: region, mapType: mapType)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                // 4
                Picker("", selection: $mapType) {
                    Text("Standard").tag(MKMapType.standard)
                    Text("Satellite").tag(MKMapType.satellite)
                    Text("Hybrid").tag(MKMapType.hybrid)
                }
                .pickerStyle(SegmentedPickerStyle())
                .offset(y: -40)
                .font(.largeTitle)
            }
        }
    }
}
