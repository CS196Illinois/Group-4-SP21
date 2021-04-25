//
//  ContentView.swift
//  Shared


import SwiftUI

struct TabView: View {
    let tabBarImageNames = ["house.fill", "mappin.and.ellipse", "plus.app.fill", "person.crop.circle"]
    @State var selectedIndex = 0
    @State var shouldShowModal = false
    var body: some View {
        VStack(spacing:0) {
            ZStack {
                
                Spacer()
                    .fullScreenCover(isPresented: $shouldShowModal, content: {
                        Button(action: {shouldShowModal.toggle()}, label: {
                            Text("This is the new itinerary page")
                        })
                    
                })
                switch selectedIndex {
                case 0:
                    NavigationView {
                        Text("This is the home page")
                            .navigationTitle("Home Tab")
                            .statusBar(hidden: false)
                    }
                    
                case 1:
                    NavigationView {
                        MapView()

                    }
                case 2:
                    NavigationView {
                        Text("This is the new itinerary page")
                            .navigationTitle("New Itinerary Tab")
                    }
                case 3:
                    NavigationView {
                        Text("This is the profile page")
                            .navigationTitle("Profile Tab")
                    }
                default:
                    NavigationView {
                        Text("This is the profile page")
                            .navigationTitle("Profile Tab")
                    }
                }
            }
            HStack {
                ForEach(0..<4) { num in
                    Button(action: {
                        if num == 2 {
                            shouldShowModal.toggle()
                            return
                        }
                        selectedIndex = num
                    }, label: {
                        Spacer()
                            Image(systemName: tabBarImageNames[num])
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: 0.8))
                        Spacer()
                    })
                }
            }
                
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
        }
    }
}
