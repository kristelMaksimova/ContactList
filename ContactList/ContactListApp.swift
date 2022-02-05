//
//  ContactListApp.swift
//  ContactList
//
//  Created by Kristel Maximova on 04.02.2022.
//

import SwiftUI

@main
struct ContactListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(persons: Person.getContactList())
        }
    }
}
