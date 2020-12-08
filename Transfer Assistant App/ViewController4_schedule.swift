//
//  ViewController4_schedule.swift
//  Transfer Assistant App
//
//  Created by Armen Phelps on 10/18/20.
//

import UIKit

class ViewController4_schedule: UIViewController, UITableViewDataSource {
    
    var name: String = ""
    var major: String = ""
    var emphasis: String = ""
    var graduation: String = ""
    var classList: [[String]] = [[]]
    
    
    let headers = ["Fall 2021", "Spring 2022", "Fall 2022", "Spring 2023", "Fall 2023", "Spring 2024", "Fall 2024", "Spring 2025"]
    let units = [
        ["4 units", "4 units", "4 units", "3-4 units"],
        ["4 units", "4 units", "4 units", "3-4 units"],
        ["4 units", "4 units", "3-4 units", "3-4 units"],
        ["4 units", "4 units", "3-4 units", "3-4 units"],
        ["4 units", "4 units", "3-4 units", "3-4 units"],
        ["4 units", "4 units", "3-4 units", "3-4 units"],
        ["4 units", "4 units", "3-4 units", "3-4 units"],
        ["4 units", "4 units", "3-4 units", "3-4 units"]
    ]
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var majorLabel: UILabel!
    
    @IBOutlet weak var emphasisLabel: UILabel!
    
    @IBOutlet weak var graduationLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName: "CourseUITableViewCell", bundle: nil), forCellReuseIdentifier: "customCourse")
        
        nameLabel.text = name
        majorLabel.text = major
        emphasisLabel.text = emphasis
        graduationLabel.text = graduation
        
        }
        
        // Do any additional setup after loading the view.
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = headers[section]
        label.backgroundColor = UIColor.lightGray
        return label
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return classList.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classList[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCourse", for: indexPath) as! NewTableViewCell
        let nameOfRow = classList[indexPath.section][indexPath.row]
        let unitsOfRow = units[indexPath.section][indexPath.row]
        cell.courseNameText?.text = nameOfRow
        cell.unitCountText?.text = unitsOfRow
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 32.0
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

class NewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var courseNameText: UILabel!
    
    @IBOutlet weak var unitCountText: UILabel!
}
