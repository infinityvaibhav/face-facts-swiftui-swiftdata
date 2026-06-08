//
//  Previewer.swift
//  FaceFacts
//
//  Created by वैभव उपाध्याय on 08/06/26.
//

import Foundation
import SwiftData

@MainActor
struct Previewer {
    let container: ModelContainer
    let event: Event
    let person: Person
    
    init() throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        container = try ModelContainer(for: Person.self, configurations: config)
        event = Event(name: "Dimension Jump", location: "Mumbai")
        person = Person(name: "Dave Lister", email: "dave@yahoo.com", details: "hello dave", metAt: event)
        container.mainContext.insert(person)
    }
}
