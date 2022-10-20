//
//  ContactCardViewController.swift
//  ContactList
//
//  Created by Vasyl Larin on 19.10.2022.
//

import UIKit

class DetailsContactViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = contact.fullName
        emailLabel.text = "E-mail: \(contact.email)"
        phoneLabel.text = "Mobile: \(contact.mobile)"

    }

}
