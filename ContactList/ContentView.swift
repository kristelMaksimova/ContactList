//
//  ContentView.swift
//  ContactList
//
//  Created by Kristel Maximova on 04.02.2022.
//

import SwiftUI

struct ContentView: View {
    let persons: [Person]
    var body: some View {
        TabView{
            MainContactListView(persons: persons)
                .tabItem{
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            ContactListView(persons: persons)
                .tabItem{
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(persons: Person.getContactList())
    }
}
