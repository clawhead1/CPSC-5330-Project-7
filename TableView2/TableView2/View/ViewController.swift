//
//  ViewController.swift
//  TableView2
//
//  Created by Chase Lawhead on 2/23/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stateCapital.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = stateCapital[indexPath.row].capital
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .normal, title: "See Capital") {
            (_, _, _) in
            let navigateController = NavigationViewController()
            navigateController.capital = self.stateCapital[indexPath.row].state
            self.present(navigateController, animated: true, completion: nil)
        }
        let config = UISwipeActionsConfiguration(actions: [action])
        config.performsFirstActionWithFullSwipe = true
        return config
    }
    

    var stateCapital = [
        StateCapital("Alabama", "Montgomery"),
        StateCapital("Tennessee", "Nashville"),
        StateCapital("Alaska", "Juneau"),
        StateCapital("Colorado", "Denver"),
        StateCapital("Florida", "Tallahassee"),
        StateCapital("Mississippi", "Jackson"),
        StateCapital("Georgia", "Atlanta"),
        StateCapital("Iowa", "Des Moines"),
        StateCapital("Michigan", "Lansing"),
        StateCapital("North Carolina", "Raleigh"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}
