import SwiftUI

struct Tabview: View {
    var body: some View {
        TabView {
            
        VStack{
            Image(systemName: "location")
                .font(.system(size: 75, weight: .bold, design: .rounded))
            Text("Welcome to Itinerary.io!")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            Text("The best way to plan your trip.")
                .font(.system(size: 15, weight: .regular, design: .rounded))
        }
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            VStack{
                Image(systemName: "mappin.and.ellipse")
                    .font(.system(size: 50, weight: .bold, design: .rounded))
                    .padding()
                Text("Popular Destinations")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                MapView()
            }
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Map")
                }
            
            VStack{
                Image(systemName: "airplane")
                    .font(.system(size: 75, weight: .bold, design: .rounded))
                    .padding()
            Text("Flights Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            }
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Flights")
                }
            
            VStack{
                Image(systemName: "list.bullet.indent")
                    .font(.system(size: 75, weight: .bold, design: .rounded))
                    .padding()
            Text("Itinerary Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            }
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "list.bullet.indent")
                    Text("Itinerary")
                }
         
            VStack{
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 50, weight: .bold, design: .rounded))
                    .padding()
            Text("Profile Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            }
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
        }
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
        }
        .accentColor(.blue)
                
    }
}

struct Tabview_Previews: PreviewProvider {
    static var previews: some View {
        Tabview()
    }
}
