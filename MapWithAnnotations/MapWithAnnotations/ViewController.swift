import UIKit
import MapKit

class ViewController: UINavigationController, MKMapViewDelegate {

    let mapView = MKMapView()
    
    //Initial Position
    let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.1020, longitude: -88.2272), latitudinalMeters: 10000000, longitudinalMeters: 10000000)
    
    //Monuments
    
    let AlmaMater = Place(title: "Alma Mater", coordinate: CLLocationCoordinate2D(latitude: 40.1099, longitude: -88.2284), info: "The Alma Mater, a bronze statue by sculptor Lorado Taft, is a beloved symbol of the University of Illinois at Urbana-Champaign.")
    let GoldenGateBridge = Place(title: "Golden Gate Bridge", coordinate: CLLocationCoordinate2D(latitude: 37.8199, longitude: -122.4783), info: "The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.")
    let StatueofLiberty = Place(title: "Statue of Liberty", coordinate: CLLocationCoordinate2D(latitude: 40.6892, longitude: -74.0445), info: "The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor within New York City, in the United States.")
    let GreatWallOfChina = Place(title: "Great Wall of China", coordinate: CLLocationCoordinate2D(latitude: 40.4319, longitude: 116.5704), info: "The Great Wall of China is a series of fortifications that were built across the historical northern borders of ancient Chinese states and Imperial China as protection against various nomadic groups from the Eurasian Steppe.")
    let TajMahal = Place(title: "Taj Mahal", coordinate: CLLocationCoordinate2D(latitude:27.1751, longitude: 78.0421), info: "The Taj Mahal is an ivory-white marble mausoleum on the southern bank of the river Yamuna in the Indian city of Agra.")
    let SydneyOperaHouse = Place(title: "Sydney Opera House", coordinate: CLLocationCoordinate2D(latitude:-33.8568, longitude: 151.2153), info: "The Sydney Opera House is a multi-venue performing arts centre at Sydney Harbour located in Sydney, New South Wales, Australia.")
    let EiffelTower = Place(title: "Eiffel Tower", coordinate: CLLocationCoordinate2D(latitude:48.8584, longitude: 2.2945), info: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMapView()
        mapView.register(customAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
    }
    
    func setupMapView() {
        view.addSubview(mapView)
        mapView.delegate = self
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        mapView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        mapView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        mapView.setRegion(region, animated: true)
        mapView.addAnnotation(AlmaMater)
        mapView.addAnnotation(GoldenGateBridge)
        mapView.addAnnotation(StatueofLiberty)
        mapView.addAnnotation(GreatWallOfChina)
        mapView.addAnnotation(TajMahal)
        mapView.addAnnotation(SydneyOperaHouse)
        mapView.addAnnotation(EiffelTower)
    }
}


//https://medium.com/swift-productions/mkmapview-with-annotations-905e89eef42b
