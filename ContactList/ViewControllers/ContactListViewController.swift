//
//  ShortContactListViewController.swift
//  ContactList
//
//  Created by Vasyl Larin on 19.10.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private var contactList = Person.getContact()

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.row]
        
        content.text = contact.fullName
        
        cell.contentConfiguration = content

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? DetailsContactViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC?.contact = contactList[indexPath.row]
    }

}
