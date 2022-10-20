//
//  LargeContactListViewController.swift
//  ContactList
//
//  Created by Vasyl Larin on 19.10.2022.
//

import UIKit

class ContactCardsViewController: UITableViewController {
    
    var contactList = Person.getContact()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "card", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.row]
        
        
// Так и не понял, что здесь не так. :((
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: "phone")
            content.text = contact.mobile
        default:
            content.image = UIImage(systemName: "mail")
            content.text = contact.email
        }
    
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].fullName
    }

}
