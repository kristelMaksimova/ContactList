//
//  ContactListView.swift
//  ContactList
//
//  Created by Kristel Maximova on 04.02.2022.
//

import SwiftUI

struct ContactListView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView{
            List(persons, id: \.name) { person in
                Section(header: Text("\(person.fullName)")) {
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text("\(person.phoneNumber)")
                    }
                    HStack {
                        Image(systemName: "tray")
                            .foregroundColor(.blue)
                        Text("\(person.email)")
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getContactList())
    }
}
