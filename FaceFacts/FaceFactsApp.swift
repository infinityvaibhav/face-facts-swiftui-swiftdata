//
//  FaceFactsApp.swift
//  FaceFacts
//
//  Created by वैभव उपाध्याय on 07/06/26.
//

import SwiftUI
import SwiftData

@main
struct FaceFactsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self)
    }
}
