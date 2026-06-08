//
//  Event.swift
//  FaceFacts
//
//  Created by वैभव उपाध्याय on 08/06/26.
//

import Foundation
import SwiftData

@Model
class Event {
    var name: String
    var location: String
    var people = [Person]()
    
    init(name: String, location: String) {
        self.name = name
        self.location = location
    }
}
