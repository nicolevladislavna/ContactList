//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Veronika Iskandarova on 25.06.2024.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var fullName: UILabel!
    @IBOutlet var phoneNumber: UILabel!
    @IBOutlet var email: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullName.text = person.firstName + " " + person.lastName
        phoneNumber.text = person.phoneNumber
        email.text = person.email
    }
}
