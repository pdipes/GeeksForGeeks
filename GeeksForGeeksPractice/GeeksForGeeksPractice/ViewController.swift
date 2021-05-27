//
//  ViewController.swift
//  GeeksForGeeksPractice
//
//  Created by Dipesh Pokhrel on 5/26/21.
//

import UIKit

class ViewController: UIViewController {
    //cell properties
    let displayCellName = "OrganizationCell"
    //data
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController : UITableViewDataSource,UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier:displayCellName ){
            cell.textLabel?.text = "VISA"
            return cell
        }
        print("Could not initialize the cell")
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let visaController =  self.storyboard?.instantiateViewController(identifier: "CodeController") as? CodeController {
            self.navigationController?.pushViewController(visaController, animated: true )
        }
    }
}

struct  OrganizationalModel {
    var name : String
    var id : Int
}

struct OrganizationDetailViewModel{
    var name : String
}
