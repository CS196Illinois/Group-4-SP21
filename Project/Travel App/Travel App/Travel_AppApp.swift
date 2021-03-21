//
//  Travel_AppApp.swift
//  Travel App
//
//  Created by Matthew Geimer on 3/14/21.
//

import SwiftUI
import Firebase

@main
struct Travel_AppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
