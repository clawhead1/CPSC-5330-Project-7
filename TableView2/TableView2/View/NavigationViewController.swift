//
//  NavigationViewController.swift
//  TableView2
//
//  Created by Chase Lawhead on 2/23/24.
//

import UIKit

class NavigationViewController: UIViewController {
    var capital = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.text = capital
        label.frame = CGRect(x: self.view.center.x, y: self.view.center.y, width: 300, height: 100)
        label.center = self.view.center
        view.backgroundColor = UIColor.white
        view.addSubview(label)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
