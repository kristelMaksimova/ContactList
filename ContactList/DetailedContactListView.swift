//
//  DetailedContactListView.swift
//  ContactList
//
//  Created by Kristel Maximova on 04.02.2022.
//

import SwiftUI

struct DetailedContactListView: View {
    
    let persons: Person
    
    var body: some View {
        List{
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                Spacer()
            }
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text("\(persons.phoneNumber)")
            }
            HStack {
                Image(systemName: "tray")
                    .foregroundColor(.blue)
                Text("\(persons.email)")
            }
        } .listStyle(.grouped)
            .navigationTitle("\(persons.fullName)")
    }
}

struct DetailedContactListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactListView(persons: Person.getContactList().first!)
    }
}
