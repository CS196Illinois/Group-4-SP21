import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
    let url: URL?
}





struct MapView: View {
    
    @State private var Locations: [Location] = [
        Location(coordinate: .init(latitude: 40.1099, longitude: -88.2284), url: URL(string: "https://en.wikipedia.org/wiki/Alma_Mater_(Illinois_sculpture)")),
        Location(coordinate: .init(latitude: 37.8199, longitude: -122.4783),  url: URL(string: "https://en.wikipedia.org/wiki/Golden_Gate_Bridge")),
        Location(coordinate: .init(latitude: 40.6892, longitude: -74.0445),  url: URL(string: "https://en.wikipedia.org/wiki/Statue_of_Liberty")),
        Location(coordinate: .init(latitude: 40.4319, longitude: 116.5704),  url: URL(string: "https://en.wikipedia.org/wiki/Great_Wall_of_China")),
        Location(coordinate: .init(latitude:27.1751, longitude: 78.0421),  url: URL(string: "https://en.wikipedia.org/wiki/Taj_Mahal")),
        Location(coordinate: .init(latitude:-33.8568, longitude: 151.2153), url: URL(string: "https://en.wikipedia.org/wiki/Sydney_Opera_House")),
        Location(coordinate: .init(latitude: 55.7520, longitude: 37.6715),  url: URL(string: "https://en.wikipedia.org/wiki/Moscow_Kremlin")),
        Location(coordinate: .init(latitude:48.8584, longitude: 2.2945),  url: URL(string: "https://en.wikipedia.org/wiki/Eiffel_tower")),
        Location(coordinate: .init(latitude:25.1972, longitude: 55.2744),  url: URL(string: "https://en.wikipedia.org/wiki/Burj_Khalifa"))
    ]

    @State private var userTrackingMode: MapUserTrackingMode = .follow
        @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 40.1099, longitude: -88.2284),
            span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100)
        )
    
    var body: some View {
           Map(coordinateRegion: $region, annotationItems: Locations) { location in
               MapAnnotation(
                   coordinate: location.coordinate,
                   anchorPoint: CGPoint(x: 0.5, y: 0.5)
               ) {
                   Button(action: {UIApplication.shared.open(location.url!)}) {
                    Text("📍")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                   }
                }
            }
        }
    }



struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MapView()
        }
    }
}
