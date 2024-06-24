//
//  ViewController.swift
//  ContactList
//
//  Created by Veronika Iskandarova on 21.06.2024.
//

import UIKit

class ContactListViewController: UITableViewController {
    private let dataSource = DataStore()
    private var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        people = dataSource.generateContacts(count: 30)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailsVC = segue.destination as? PersonDetailsViewController
        detailsVC?.person = people[indexPath.row]
    }
}

extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    override  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = people[indexPath.row]
        cell.textLabel?.text = "\(person.firstName) \(person.lastName)"
        return cell
    }
}
