//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Cooper Miller on 2/28/21.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.data)
            }
        }
    }
}
