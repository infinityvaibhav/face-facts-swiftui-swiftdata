//
//  PeopleView.swift
//  FaceFacts
//
//  Created by वैभव उपाध्याय on 07/06/26.
//

import SwiftUI
import SwiftData

struct PeopleView: View {
    @Environment(\.modelContext) var modelContext
    @Query var people: [Person]
    
    var body: some View {
        if people.isEmpty {
            ContentUnavailableView(
                "No People",
                systemImage: "person.slash",
                description: Text("Add a person to get started.")
            )
        } else {
            List {
                ForEach(people) { person in
                    NavigationLink(value: person) {
                        Text(person.name)
                    }
                }
                .onDelete(perform: deletePeople)
            }
        }
    }
    
    init(searchText: String = "", sortOrder: [SortDescriptor<Person>] = []) {
        let search = searchText
        
        _people = Query(
            filter: #Predicate<Person> { person in
                search.isEmpty || (person.name.localizedStandardContains(search) || person.email.localizedStandardContains(search) || person.details.localizedStandardContains(search))
            },
            sort: sortOrder
        )
    }
    
    func deletePeople(at offsets: IndexSet) {
        for offset in offsets {
            let person = people[offset]
            modelContext.delete(person)
        }
    }
}

#Preview {
    do {
        let previewer = try Previewer()
        
        return PeopleView()
                .modelContainer(previewer.container)
    } catch {
        return Text("Error in loading preview for \(#file) \(error.localizedDescription)")
    }
}
