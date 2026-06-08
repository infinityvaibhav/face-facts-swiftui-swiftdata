//
//  EditEventView.swift
//  FaceFacts
//
//  Created by वैभव उपाध्याय on 08/06/26.
//

import SwiftUI
import SwiftData

struct EditEventView: View {
    @Bindable var event: Event
    
    var body: some View {
        Form {
            TextField("Name of event", text: $event.name)
            TextField("Location of event", text: $event.location)
        }
        .navigationTitle("Edit Event")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    do {
        let previewer = try Previewer()
        
        return EditEventView(event: previewer.event)
            .modelContainer(previewer.container)
    } catch {
        return Text("Error in loading preview for \(#file) \(error.localizedDescription)")
    }
}
