//
//  DataStore.swift
//  ContactList
//
//  Created by Veronika Iskandarova on 24.06.2024.
//

import Foundation

class DataStore {
    private let firstNames = ["Veronika", "Ivan", "Denis", "Kate", "Ann", "Katrin", "Alex", "Sarah", "Robert", "Jessica"]
    private let lastNames = ["Smith", "Lee", "Gray", "Johnson", "Brown", "McLaren", "White", "Wood", "Williams", "Jones"]
    private let emails = ["veronika@gmail.com", "ivan@gmail.com", "denis@gmail.com", "kate@gmail.com", "ann@gmail.com", "katrin@gmail.com", "alex@gmail.com", "sarah@gmail.com", "robert@gmail.com", "jessica@gmail.com"]
    private let phones = ["123-456-7890", "234-567-8901", "345-678-9012", "456-789-0123", "567-890-1234", "678-901-2345", "546-543-5678", "345-213-1234", "789-658-0098", "523-543-55555"]
    
    func generateContacts(count: Int) -> [Person] {
        var contact = [Person]()
        var index = Set<Int>()
        
        while contact.count < count {
            let firstNameIndex = Int.random(in: 0..<firstNames.count)
            let lastNameIndex = Int.random(in: 0..<lastNames.count)
            let emailIndex = Int.random(in: 0..<emails.count)
            let phoneIndex = Int.random(in: 0..<phones.count)
            
            let combinationIndex = firstNameIndex *  1000 + lastNameIndex * 100 + emailIndex * 10 + phoneIndex
            
            if !index.contains(combinationIndex) {
                let person = Person(firstName: firstNames[firstNameIndex], lastName: lastNames[lastNameIndex], phoneNumber: phones[phoneIndex], email: emails[emailIndex])
                contact.append(person)
                index.insert(combinationIndex)
            }
        }
        return contact
    }
}
