//
//  Contacts.swift
//  ContactList
//
//  Created by Vasyl Larin on 19.10.2022.
//


struct Person {
    let firstName: String
    let secondName: String
    
    let mobile: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    let contact = DataStore()
    
    static func getContact() -> [Person] {
        var contactList: [Person] = []
        let contactName = DataStore.names.shuffled()
        let contactSurname = DataStore.surnames.shuffled()
        let contactMobile = DataStore.mobile.shuffled()
        let contactEmail = DataStore.email.shuffled()
        
        for item in 0...contactName.count - 1 {
            contactList.append(
                Person(
                    firstName: contactName[item],
                    secondName: contactSurname[item],
                    mobile: contactMobile[item],
                    email: contactEmail[item]
                )
            )
        }
        return contactList
    }
}

class DataStore {
    static let names = ["Ivan", "Alex", "Tim", "Steve", "Joe", "Elon", "Jeff", "Paul"]
    static let surnames = ["Ivanov", "Petrov", "Cook", "Jobs", "Biden", "Musk", "Bezos", "McCartney"]
    
    static let mobile = ["1", "2", "3", "4", "5", "6", "7", "8"]
    static let email = ["ivan@ivan.com", "alex@alex.com", "tim@tim.com", "steve@steve.com", "joe@joe.com", "elon@spacex.com", "jeff@jeff.com", "paul@paul.com"]
}
