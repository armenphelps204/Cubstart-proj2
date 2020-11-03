//
//  ViewController6_list.swift
//  Transfer Assistant App
//
//  Created by Armen Phelps on 10/18/20.
//

import UIKit

class ViewController6_list: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let course_name = ["CS61A", "CS61B", "CS61C", "EECS16A", "EE16B"]
    let course_description = ["intro 1", "intro 2", "intro 3", "intro 4", "intro 5"]
    var selectedIndex = Int()
    @IBOutlet weak var tableViewCourse: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return course_name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "course", for: indexPath)
        
        cell.textLabel?.text = course_name[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(" \(#function)")
         selectedIndex = indexPath.row
       
        performSegue(withIdentifier: "description", sender: self)
      
    }

    
    override func prepare( for segue: UIStoryboardSegue, sender: Any?){
        print("✅ \(#function)")
        
        if segue.identifier == "description"{
            
            if let indexPath = tableViewCourse.indexPathForSelectedRow{
                let selectedRow = indexPath.row
                    let vc : CourseDescriptionViewController = segue.destination as! CourseDescriptionViewController
                    print(course_description[selectedIndex])
                    vc.name = course_description[selectedRow]
            }
        }
    
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
