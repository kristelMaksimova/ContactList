//
//  MainContactListView.swift
//  ContactList
//
//  Created by Kristel Maximova on 04.02.2022.
//

import SwiftUI

struct MainContactListView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView{
            List(persons, id: \.name) { person in
                NavigationLink(destination: DetailedContactListView(persons: person)) {
                    Text("\(person.fullName)")
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Contact List")
        }
    }
}

struct MainContactListView_Previews: PreviewProvider {
    static var previews: some View {
        MainContactListView(persons: Person.getContactList())
    }
}
